
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand_struct {int count; } ;


 int kmem_cache_free (int ,struct sighand_struct*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int sighand_cachep ;
 int signalfd_cleanup (struct sighand_struct*) ;

void __cleanup_sighand(struct sighand_struct *sighand)
{
 if (refcount_dec_and_test(&sighand->count)) {
  signalfd_cleanup(sighand);




  kmem_cache_free(sighand_cachep, sighand);
 }
}
