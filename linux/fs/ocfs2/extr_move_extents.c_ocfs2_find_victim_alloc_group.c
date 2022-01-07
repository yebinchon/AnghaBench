
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_super {int s_clustersize_bits; int sys_root_inode; } ;
struct ocfs2_group_desc {int bg_bits; int bg_blkno; int bg_next_group; } ;
struct TYPE_6__ {int i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {struct ocfs2_chain_rec* cl_recs; int cl_next_free_rec; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int c_blkno; } ;
struct inode {TYPE_4__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int namebuf ;
struct TYPE_8__ {int s_blocksize_bits; } ;


 int EINVAL ;
 int ENOENT ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 struct ocfs2_super* OCFS2_SB (TYPE_4__*) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mlog (int ,char*,int,int,int) ;
 int mlog_errno (int) ;
 int ocfs2_lookup_ino_from_name (int ,char*,int ,int*) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,int,int,struct buffer_head**) ;
 int ocfs2_sprintf_system_inode_name (char*,int,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static int ocfs2_find_victim_alloc_group(struct inode *inode,
      u64 vict_blkno,
      int type, int slot,
      int *vict_bit,
      struct buffer_head **ret_bh)
{
 int ret, i, bits_per_unit = 0;
 u64 blkno;
 char namebuf[40];

 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct buffer_head *ac_bh = ((void*)0), *gd_bh = ((void*)0);
 struct ocfs2_chain_list *cl;
 struct ocfs2_chain_rec *rec;
 struct ocfs2_dinode *ac_dinode;
 struct ocfs2_group_desc *bg;

 ocfs2_sprintf_system_inode_name(namebuf, sizeof(namebuf), type, slot);
 ret = ocfs2_lookup_ino_from_name(osb->sys_root_inode, namebuf,
      strlen(namebuf), &blkno);
 if (ret) {
  ret = -ENOENT;
  goto out;
 }

 ret = ocfs2_read_blocks_sync(osb, blkno, 1, &ac_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ac_dinode = (struct ocfs2_dinode *)ac_bh->b_data;
 cl = &(ac_dinode->id2.i_chain);
 rec = &(cl->cl_recs[0]);

 if (type == GLOBAL_BITMAP_SYSTEM_INODE)
  bits_per_unit = osb->s_clustersize_bits -
     inode->i_sb->s_blocksize_bits;



 if ((vict_blkno < le64_to_cpu(rec->c_blkno)) ||
     (vict_blkno >= ((u64)le32_to_cpu(ac_dinode->id1.bitmap1.i_total) <<
    bits_per_unit))) {
  ret = -EINVAL;
  goto out;
 }

 for (i = 0; i < le16_to_cpu(cl->cl_next_free_rec); i++) {

  rec = &(cl->cl_recs[i]);
  if (!rec)
   continue;

  bg = ((void*)0);

  do {
   if (!bg)
    blkno = le64_to_cpu(rec->c_blkno);
   else
    blkno = le64_to_cpu(bg->bg_next_group);

   if (gd_bh) {
    brelse(gd_bh);
    gd_bh = ((void*)0);
   }

   ret = ocfs2_read_blocks_sync(osb, blkno, 1, &gd_bh);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   bg = (struct ocfs2_group_desc *)gd_bh->b_data;

   if (vict_blkno < (le64_to_cpu(bg->bg_blkno) +
      le16_to_cpu(bg->bg_bits))) {

    *ret_bh = gd_bh;
    *vict_bit = (vict_blkno - blkno) >>
       bits_per_unit;
    mlog(0, "find the victim group: #%llu, "
         "total_bits: %u, vict_bit: %u\n",
         blkno, le16_to_cpu(bg->bg_bits),
         *vict_bit);
    goto out;
   }

  } while (le64_to_cpu(bg->bg_next_group));
 }

 ret = -EINVAL;
out:
 brelse(ac_bh);




 return ret;
}
