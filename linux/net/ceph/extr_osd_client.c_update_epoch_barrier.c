
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ceph_osd_client {scalar_t__ epoch_barrier; TYPE_1__* osdmap; } ;
struct TYPE_2__ {scalar_t__ epoch; } ;


 int dout (char*,scalar_t__,scalar_t__) ;
 scalar_t__ likely (int) ;
 int maybe_request_map (struct ceph_osd_client*) ;

__attribute__((used)) static void update_epoch_barrier(struct ceph_osd_client *osdc, u32 eb)
{
 if (likely(eb > osdc->epoch_barrier)) {
  dout("updating epoch_barrier from %u to %u\n",
    osdc->epoch_barrier, eb);
  osdc->epoch_barrier = eb;

  if (eb > osdc->osdmap->epoch)
   maybe_request_map(osdc);
 }
}
