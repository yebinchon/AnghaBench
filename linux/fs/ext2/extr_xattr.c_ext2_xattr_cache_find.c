
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mb_cache_entry {scalar_t__ e_value; int e_hash_list; } ;
struct mb_cache {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
struct ext2_xattr_header {int h_hash; } ;
struct buffer_head {int b_count; } ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {int h_refcount; } ;


 struct mb_cache* EA_BLOCK_CACHE (struct inode*) ;
 scalar_t__ EXT2_XATTR_REFCOUNT_MAX ;
 TYPE_1__* HDR (struct buffer_head*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 int ea_bdebug (struct buffer_head*,char*,int ) ;
 int ea_idebug (struct inode*,char*,unsigned long,...) ;
 int ext2_error (int ,char*,char*,int ,unsigned long) ;
 int ext2_xattr_cmp (struct ext2_xattr_header*,TYPE_1__*) ;
 scalar_t__ hlist_bl_unhashed (int *) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 struct mb_cache_entry* mb_cache_entry_find_first (struct mb_cache*,scalar_t__) ;
 struct mb_cache_entry* mb_cache_entry_find_next (struct mb_cache*,struct mb_cache_entry*) ;
 int mb_cache_entry_put (struct mb_cache*,struct mb_cache_entry*) ;
 int mb_cache_entry_touch (struct mb_cache*,struct mb_cache_entry*) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
ext2_xattr_cache_find(struct inode *inode, struct ext2_xattr_header *header)
{
 __u32 hash = le32_to_cpu(header->h_hash);
 struct mb_cache_entry *ce;
 struct mb_cache *ea_block_cache = EA_BLOCK_CACHE(inode);

 if (!header->h_hash)
  return ((void*)0);
 ea_idebug(inode, "looking for cached blocks [%x]", (int)hash);
again:
 ce = mb_cache_entry_find_first(ea_block_cache, hash);
 while (ce) {
  struct buffer_head *bh;

  bh = sb_bread(inode->i_sb, ce->e_value);
  if (!bh) {
   ext2_error(inode->i_sb, "ext2_xattr_cache_find",
    "inode %ld: block %ld read error",
    inode->i_ino, (unsigned long) ce->e_value);
  } else {
   lock_buffer(bh);
   if (hlist_bl_unhashed(&ce->e_hash_list)) {
    mb_cache_entry_put(ea_block_cache, ce);
    unlock_buffer(bh);
    brelse(bh);
    goto again;
   } else if (le32_to_cpu(HDR(bh)->h_refcount) >
       EXT2_XATTR_REFCOUNT_MAX) {
    ea_idebug(inode, "block %ld refcount %d>%d",
       (unsigned long) ce->e_value,
       le32_to_cpu(HDR(bh)->h_refcount),
       EXT2_XATTR_REFCOUNT_MAX);
   } else if (!ext2_xattr_cmp(header, HDR(bh))) {
    ea_bdebug(bh, "b_count=%d",
       atomic_read(&(bh->b_count)));
    mb_cache_entry_touch(ea_block_cache, ce);
    mb_cache_entry_put(ea_block_cache, ce);
    return bh;
   }
   unlock_buffer(bh);
   brelse(bh);
  }
  ce = mb_cache_entry_find_next(ea_block_cache, ce);
 }
 return ((void*)0);
}
