
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int de_num_used; } ;
struct ocfs2_dx_root_block {int dr_num_entries; TYPE_2__ dr_entries; } ;
struct ocfs2_dx_hinfo {int minor_hash; int major_hash; } ;
struct ocfs2_dir_entry {int rec_len; int name; int name_len; int inode; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {char* b_data; int b_blocknr; } ;
struct TYPE_3__ {int s_blocksize; } ;


 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int ocfs2_dx_dir_name_hash (struct inode*,int ,int ,struct ocfs2_dx_hinfo*) ;
 int ocfs2_dx_entry_list_insert (TYPE_2__*,struct ocfs2_dx_hinfo*,int ) ;
 int trace_ocfs2_dx_dir_index_root_block (unsigned long long,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ocfs2_dx_dir_index_root_block(struct inode *dir,
      struct buffer_head *dx_root_bh,
      struct buffer_head *dirent_bh)
{
 char *de_buf, *limit;
 struct ocfs2_dx_root_block *dx_root;
 struct ocfs2_dir_entry *de;
 struct ocfs2_dx_hinfo hinfo;
 u64 dirent_blk = dirent_bh->b_blocknr;

 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

 de_buf = dirent_bh->b_data;
 limit = de_buf + dir->i_sb->s_blocksize;

 while (de_buf < limit) {
  de = (struct ocfs2_dir_entry *)de_buf;

  if (!de->name_len || !de->inode)
   goto inc;

  ocfs2_dx_dir_name_hash(dir, de->name, de->name_len, &hinfo);

  trace_ocfs2_dx_dir_index_root_block(
    (unsigned long long)dir->i_ino,
    hinfo.major_hash, hinfo.minor_hash,
    de->name_len, de->name,
    le16_to_cpu(dx_root->dr_entries.de_num_used));

  ocfs2_dx_entry_list_insert(&dx_root->dr_entries, &hinfo,
        dirent_blk);

  le32_add_cpu(&dx_root->dr_num_entries, 1);
inc:
  de_buf += le16_to_cpu(de->rec_len);
 }
}
