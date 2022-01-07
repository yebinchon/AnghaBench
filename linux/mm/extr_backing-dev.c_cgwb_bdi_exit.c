
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int wb_congested; } ;


 int wb_congested_put (int ) ;

__attribute__((used)) static void cgwb_bdi_exit(struct backing_dev_info *bdi)
{
 wb_congested_put(bdi->wb_congested);
}
