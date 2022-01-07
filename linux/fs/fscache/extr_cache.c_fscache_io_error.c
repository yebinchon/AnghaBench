
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_cache {TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int name; } ;


 int FSCACHE_IOERROR ;
 int pr_err (char*,int ) ;
 int test_and_set_bit (int ,int *) ;

void fscache_io_error(struct fscache_cache *cache)
{
 if (!test_and_set_bit(FSCACHE_IOERROR, &cache->flags))
  pr_err("Cache '%s' stopped due to I/O error\n",
         cache->ops->name);
}
