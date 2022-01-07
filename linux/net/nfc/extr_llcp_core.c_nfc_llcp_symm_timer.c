
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfc_llcp_local {int timeout_work; } ;


 struct nfc_llcp_local* from_timer (int ,struct timer_list*,int ) ;
 int link_timer ;
 struct nfc_llcp_local* local ;
 int pr_err (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void nfc_llcp_symm_timer(struct timer_list *t)
{
 struct nfc_llcp_local *local = from_timer(local, t, link_timer);

 pr_err("SYMM timeout\n");

 schedule_work(&local->timeout_work);
}
