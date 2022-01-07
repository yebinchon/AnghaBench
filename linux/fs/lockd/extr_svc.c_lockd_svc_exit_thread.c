
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int lockd_unregister_notifiers () ;
 int nlm_ntf_refcnt ;
 int nlmsvc_rqst ;
 int svc_exit_thread (int ) ;

__attribute__((used)) static void lockd_svc_exit_thread(void)
{
 atomic_dec(&nlm_ntf_refcnt);
 lockd_unregister_notifiers();
 svc_exit_thread(nlmsvc_rqst);
}
