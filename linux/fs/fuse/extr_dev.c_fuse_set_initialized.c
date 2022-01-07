
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int initialized; } ;


 int smp_wmb () ;

void fuse_set_initialized(struct fuse_conn *fc)
{

 smp_wmb();
 fc->initialized = 1;
}
