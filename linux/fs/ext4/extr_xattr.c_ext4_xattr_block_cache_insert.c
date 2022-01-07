
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache {int dummy; } ;
struct ext4_xattr_header {int h_refcount; int h_hash; } ;
struct buffer_head {int b_blocknr; } ;
typedef scalar_t__ __u32 ;


 struct ext4_xattr_header* BHDR (struct buffer_head*) ;
 int EBUSY ;
 scalar_t__ EXT4_XATTR_REFCOUNT_MAX ;
 int GFP_NOFS ;
 int ea_bdebug (struct buffer_head*,char*,...) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mb_cache_entry_create (struct mb_cache*,int ,scalar_t__,int ,int) ;

__attribute__((used)) static void
ext4_xattr_block_cache_insert(struct mb_cache *ea_block_cache,
         struct buffer_head *bh)
{
 struct ext4_xattr_header *header = BHDR(bh);
 __u32 hash = le32_to_cpu(header->h_hash);
 int reusable = le32_to_cpu(header->h_refcount) <
         EXT4_XATTR_REFCOUNT_MAX;
 int error;

 if (!ea_block_cache)
  return;
 error = mb_cache_entry_create(ea_block_cache, GFP_NOFS, hash,
          bh->b_blocknr, reusable);
 if (error) {
  if (error == -EBUSY)
   ea_bdebug(bh, "already in cache");
 } else
  ea_bdebug(bh, "inserting [%x]", (int)hash);
}
