
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache_entry {scalar_t__ e_value; } ;
struct mb_cache {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_xattr_header {int h_hash; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ __u32 ;


 int BHDR (struct buffer_head*) ;
 struct mb_cache* EA_BLOCK_CACHE (struct inode*) ;
 int ENOMEM ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned long) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 int ea_idebug (struct inode*,char*,int) ;
 struct buffer_head* ext4_sb_bread (int ,scalar_t__,int ) ;
 scalar_t__ ext4_xattr_cmp (struct ext4_xattr_header*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct mb_cache_entry* mb_cache_entry_find_first (struct mb_cache*,scalar_t__) ;
 struct mb_cache_entry* mb_cache_entry_find_next (struct mb_cache*,struct mb_cache_entry*) ;

__attribute__((used)) static struct buffer_head *
ext4_xattr_block_cache_find(struct inode *inode,
       struct ext4_xattr_header *header,
       struct mb_cache_entry **pce)
{
 __u32 hash = le32_to_cpu(header->h_hash);
 struct mb_cache_entry *ce;
 struct mb_cache *ea_block_cache = EA_BLOCK_CACHE(inode);

 if (!ea_block_cache)
  return ((void*)0);
 if (!header->h_hash)
  return ((void*)0);
 ea_idebug(inode, "looking for cached blocks [%x]", (int)hash);
 ce = mb_cache_entry_find_first(ea_block_cache, hash);
 while (ce) {
  struct buffer_head *bh;

  bh = ext4_sb_bread(inode->i_sb, ce->e_value, REQ_PRIO);
  if (IS_ERR(bh)) {
   if (PTR_ERR(bh) == -ENOMEM)
    return ((void*)0);
   bh = ((void*)0);
   EXT4_ERROR_INODE(inode, "block %lu read error",
      (unsigned long)ce->e_value);
  } else if (ext4_xattr_cmp(header, BHDR(bh)) == 0) {
   *pce = ce;
   return bh;
  }
  brelse(bh);
  ce = mb_cache_entry_find_next(ea_block_cache, ce);
 }
 return ((void*)0);
}
