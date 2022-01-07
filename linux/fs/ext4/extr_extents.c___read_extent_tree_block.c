
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_sb; } ;
struct ext4_extent_header {int eh_entries; } ;
struct ext4_extent {int ee_block; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_journal_inum; } ;


 int ENOMEM ;
 struct buffer_head* ERR_PTR (int) ;
 int EXT4_EX_FORCE_CACHE ;
 int EXT4_EX_NOCACHE ;
 TYPE_2__* EXT4_SB (int ) ;
 unsigned int EXTENT_STATUS_HOLE ;
 unsigned int EXTENT_STATUS_UNWRITTEN ;
 unsigned int EXTENT_STATUS_WRITTEN ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 int GFP_NOFS ;
 int _RET_IP_ ;
 int __GFP_MOVABLE ;
 int __ext4_ext_check (char const*,unsigned int,struct inode*,struct ext4_extent_header*,int,int ) ;
 int bh_submit_read (struct buffer_head*) ;
 int bh_uptodate_or_lock (struct buffer_head*) ;
 scalar_t__ buffer_verified (struct buffer_head*) ;
 int ext4_es_cache_extent (struct inode*,scalar_t__,int,int ,unsigned int) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_has_feature_journal (int ) ;
 struct ext4_extent_header* ext_block_hdr (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk_gfp (int ,int ,int) ;
 int set_buffer_verified (struct buffer_head*) ;
 int trace_ext4_ext_load_extent (struct inode*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct buffer_head *
__read_extent_tree_block(const char *function, unsigned int line,
    struct inode *inode, ext4_fsblk_t pblk, int depth,
    int flags)
{
 struct buffer_head *bh;
 int err;

 bh = sb_getblk_gfp(inode->i_sb, pblk, __GFP_MOVABLE | GFP_NOFS);
 if (unlikely(!bh))
  return ERR_PTR(-ENOMEM);

 if (!bh_uptodate_or_lock(bh)) {
  trace_ext4_ext_load_extent(inode, pblk, _RET_IP_);
  err = bh_submit_read(bh);
  if (err < 0)
   goto errout;
 }
 if (buffer_verified(bh) && !(flags & EXT4_EX_FORCE_CACHE))
  return bh;
 if (!ext4_has_feature_journal(inode->i_sb) ||
     (inode->i_ino !=
      le32_to_cpu(EXT4_SB(inode->i_sb)->s_es->s_journal_inum))) {
  err = __ext4_ext_check(function, line, inode,
           ext_block_hdr(bh), depth, pblk);
  if (err)
   goto errout;
 }
 set_buffer_verified(bh);



 if (!(flags & EXT4_EX_NOCACHE) && depth == 0) {
  struct ext4_extent_header *eh = ext_block_hdr(bh);
  struct ext4_extent *ex = EXT_FIRST_EXTENT(eh);
  ext4_lblk_t prev = 0;
  int i;

  for (i = le16_to_cpu(eh->eh_entries); i > 0; i--, ex++) {
   unsigned int status = EXTENT_STATUS_WRITTEN;
   ext4_lblk_t lblk = le32_to_cpu(ex->ee_block);
   int len = ext4_ext_get_actual_len(ex);

   if (prev && (prev != lblk))
    ext4_es_cache_extent(inode, prev,
           lblk - prev, ~0,
           EXTENT_STATUS_HOLE);

   if (ext4_ext_is_unwritten(ex))
    status = EXTENT_STATUS_UNWRITTEN;
   ext4_es_cache_extent(inode, lblk, len,
          ext4_ext_pblock(ex), status);
   prev = lblk + len;
  }
 }
 return bh;
errout:
 put_bh(bh);
 return ERR_PTR(err);

}
