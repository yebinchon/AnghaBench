
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_test (int *) ;
 int running_helpers ;
 int running_helpers_waitq ;
 int wake_up (int *) ;

__attribute__((used)) static void helper_unlock(void)
{
 if (atomic_dec_and_test(&running_helpers))
  wake_up(&running_helpers_waitq);
}
