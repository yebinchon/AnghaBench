
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {int sigcnt; } ;


 int free_signal_struct (struct signal_struct*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void put_signal_struct(struct signal_struct *sig)
{
 if (refcount_dec_and_test(&sig->sigcnt))
  free_signal_struct(sig);
}
