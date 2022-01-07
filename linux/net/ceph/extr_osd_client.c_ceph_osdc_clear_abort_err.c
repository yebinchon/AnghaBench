
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_client {int lock; scalar_t__ abort_err; } ;


 int down_write (int *) ;
 int up_write (int *) ;

void ceph_osdc_clear_abort_err(struct ceph_osd_client *osdc)
{
 down_write(&osdc->lock);
 osdc->abort_err = 0;
 up_write(&osdc->lock);
}
