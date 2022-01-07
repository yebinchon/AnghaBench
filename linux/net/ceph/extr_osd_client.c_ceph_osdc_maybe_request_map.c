
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_client {int lock; } ;


 int down_read (int *) ;
 int maybe_request_map (struct ceph_osd_client*) ;
 int up_read (int *) ;

void ceph_osdc_maybe_request_map(struct ceph_osd_client *osdc)
{
 down_read(&osdc->lock);
 maybe_request_map(osdc);
 up_read(&osdc->lock);
}
