
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_client {int client; } ;


 int ABORT_ON_FULL ;
 int CEPH_OSDMAP_FULL ;
 int abort_on_full_fn ;
 scalar_t__ ceph_osdmap_flag (struct ceph_osd_client*,int ) ;
 scalar_t__ ceph_test_opt (int ,int ) ;
 int for_each_request (struct ceph_osd_client*,int ,int*) ;
 scalar_t__ have_pool_full (struct ceph_osd_client*) ;

__attribute__((used)) static void ceph_osdc_abort_on_full(struct ceph_osd_client *osdc)
{
 bool victims = 0;

 if (ceph_test_opt(osdc->client, ABORT_ON_FULL) &&
     (ceph_osdmap_flag(osdc, CEPH_OSDMAP_FULL) || have_pool_full(osdc)))
  for_each_request(osdc, abort_on_full_fn, &victims);
}
