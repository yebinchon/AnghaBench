
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct system_counterval_t {int dummy; } ;
typedef int ktime_t ;


 int ENXIO ;

__attribute__((used)) static int azx_get_sync_time(ktime_t *device,
  struct system_counterval_t *system, void *ctx)
{
 return -ENXIO;
}
