
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {scalar_t__ oom_mm; } ;


 int kmem_cache_free (int ,struct signal_struct*) ;
 int mmdrop_async (scalar_t__) ;
 int sched_autogroup_exit (struct signal_struct*) ;
 int signal_cachep ;
 int taskstats_tgid_free (struct signal_struct*) ;

__attribute__((used)) static inline void free_signal_struct(struct signal_struct *sig)
{
 taskstats_tgid_free(sig);
 sched_autogroup_exit(sig);




 if (sig->oom_mm)
  mmdrop_async(sig->oom_mm);
 kmem_cache_free(signal_cachep, sig);
}
