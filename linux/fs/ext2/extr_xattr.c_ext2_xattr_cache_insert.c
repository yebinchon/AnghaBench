
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mb_cache {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int h_hash; } ;
struct TYPE_3__ {int c_entry_count; } ;


 int EBUSY ;
 int GFP_NOFS ;
 TYPE_2__* HDR (struct buffer_head*) ;
 int atomic_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int) ;
 TYPE_1__* ext2_xattr_cache ;
 scalar_t__ le32_to_cpu (int ) ;
 int mb_cache_entry_create (struct mb_cache*,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int
ext2_xattr_cache_insert(struct mb_cache *cache, struct buffer_head *bh)
{
 __u32 hash = le32_to_cpu(HDR(bh)->h_hash);
 int error;

 error = mb_cache_entry_create(cache, GFP_NOFS, hash, bh->b_blocknr,
          1);
 if (error) {
  if (error == -EBUSY) {
   ea_bdebug(bh, "already in cache (%d cache entries)",
    atomic_read(&ext2_xattr_cache->c_entry_count));
   error = 0;
  }
 } else
  ea_bdebug(bh, "inserting [%x]", (int)hash);
 return error;
}
