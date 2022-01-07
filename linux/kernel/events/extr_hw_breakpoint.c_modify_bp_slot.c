
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 int __modify_bp_slot (struct perf_event*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_bp_mutex ;

__attribute__((used)) static int modify_bp_slot(struct perf_event *bp, u64 old_type, u64 new_type)
{
 int ret;

 mutex_lock(&nr_bp_mutex);
 ret = __modify_bp_slot(bp, old_type, new_type);
 mutex_unlock(&nr_bp_mutex);
 return ret;
}
