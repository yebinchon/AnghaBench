
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_pt_queue {int flags; struct intel_pt* pt; } ;
struct intel_pt {scalar_t__ switch_ip; } ;


 int PERF_IP_FLAG_ASYNC ;
 int PERF_IP_FLAG_BRANCH ;
 int PERF_IP_FLAG_CONDITIONAL ;
 int PERF_IP_FLAG_INTERRUPT ;
 int PERF_IP_FLAG_TX_ABORT ;

__attribute__((used)) static inline bool intel_pt_is_switch_ip(struct intel_pt_queue *ptq, u64 ip)
{
 struct intel_pt *pt = ptq->pt;

 return ip == pt->switch_ip &&
        (ptq->flags & PERF_IP_FLAG_BRANCH) &&
        !(ptq->flags & (PERF_IP_FLAG_CONDITIONAL | PERF_IP_FLAG_ASYNC |
          PERF_IP_FLAG_INTERRUPT | PERF_IP_FLAG_TX_ABORT));
}
