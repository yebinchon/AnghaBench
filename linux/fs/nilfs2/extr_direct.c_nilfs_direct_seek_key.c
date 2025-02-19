
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
typedef scalar_t__ __u64 ;


 int ENOENT ;
 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ NILFS_DIRECT_KEY_MAX ;
 scalar_t__ nilfs_direct_get_ptr (struct nilfs_bmap const*,scalar_t__) ;

__attribute__((used)) static int nilfs_direct_seek_key(const struct nilfs_bmap *direct, __u64 start,
     __u64 *keyp)
{
 __u64 key;

 for (key = start; key <= NILFS_DIRECT_KEY_MAX; key++) {
  if (nilfs_direct_get_ptr(direct, key) !=
      NILFS_BMAP_INVALID_PTR) {
   *keyp = key;
   return 0;
  }
 }
 return -ENOENT;
}
