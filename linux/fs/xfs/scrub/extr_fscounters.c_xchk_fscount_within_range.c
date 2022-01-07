
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct xfs_scrub {int mp; } ;
struct percpu_counter {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ XCHK_FSCOUNT_MIN_VARIANCE ;
 scalar_t__ max (scalar_t__ const,scalar_t__) ;
 scalar_t__ min (scalar_t__ const,scalar_t__) ;
 scalar_t__ percpu_counter_sum (struct percpu_counter*) ;
 int trace_xchk_fscounters_within_range (int ,scalar_t__,scalar_t__,scalar_t__ const) ;
 int xchk_set_incomplete (struct xfs_scrub*) ;

__attribute__((used)) static inline bool
xchk_fscount_within_range(
 struct xfs_scrub *sc,
 const int64_t old_value,
 struct percpu_counter *counter,
 uint64_t expected)
{
 int64_t min_value, max_value;
 int64_t curr_value = percpu_counter_sum(counter);

 trace_xchk_fscounters_within_range(sc->mp, expected, curr_value,
   old_value);


 if (curr_value < 0)
  return 0;


 if (curr_value == expected)
  return 1;

 min_value = min(old_value, curr_value);
 max_value = max(old_value, curr_value);


 if (expected >= min_value && expected <= max_value)
  return 1;
 if (max_value - min_value >= XCHK_FSCOUNT_MIN_VARIANCE) {
  xchk_set_incomplete(sc);
  return 1;
 }

 return 0;
}
