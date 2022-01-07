
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 int WARN_ON (int) ;
 int __release_bp_slot (struct perf_event*,int ) ;
 int __reserve_bp_slot (struct perf_event*,int ) ;

__attribute__((used)) static int __modify_bp_slot(struct perf_event *bp, u64 old_type, u64 new_type)
{
 int err;

 __release_bp_slot(bp, old_type);

 err = __reserve_bp_slot(bp, new_type);
 if (err) {
  WARN_ON(__reserve_bp_slot(bp, old_type));
 }

 return err;
}
