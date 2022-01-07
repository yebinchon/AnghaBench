
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int test_all_done_comp ;
 int test_n_undone ;

__attribute__((used)) static inline void
test_report_one_done(void)
{
 if (atomic_dec_and_test(&test_n_undone))
  complete(&test_all_done_comp);
}
