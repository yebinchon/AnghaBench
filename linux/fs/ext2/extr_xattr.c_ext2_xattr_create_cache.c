
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache {int dummy; } ;


 int HASH_BUCKET_BITS ;
 struct mb_cache* mb_cache_create (int ) ;

struct mb_cache *ext2_xattr_create_cache(void)
{
 return mb_cache_create(HASH_BUCKET_BITS);
}
