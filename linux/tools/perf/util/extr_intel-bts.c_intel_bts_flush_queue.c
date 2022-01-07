
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_bts_queue {int dummy; } ;


 int intel_bts_process_queue (struct intel_bts_queue*,int *) ;

__attribute__((used)) static int intel_bts_flush_queue(struct intel_bts_queue *btsq)
{
 u64 ts = 0;
 int ret;

 while (1) {
  ret = intel_bts_process_queue(btsq, &ts);
  if (ret < 0)
   return ret;
  if (ret)
   break;
 }
 return 0;
}
