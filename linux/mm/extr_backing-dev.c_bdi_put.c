
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int refcnt; } ;


 int kref_put (int *,int ) ;
 int release_bdi ;

void bdi_put(struct backing_dev_info *bdi)
{
 kref_put(&bdi->refcnt, release_bdi);
}
