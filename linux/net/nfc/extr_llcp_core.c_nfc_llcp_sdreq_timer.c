
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfc_llcp_local {int sdreq_timeout_work; } ;


 struct nfc_llcp_local* from_timer (int ,struct timer_list*,int ) ;
 struct nfc_llcp_local* local ;
 int schedule_work (int *) ;
 int sdreq_timer ;

__attribute__((used)) static void nfc_llcp_sdreq_timer(struct timer_list *t)
{
 struct nfc_llcp_local *local = from_timer(local, t, sdreq_timer);

 schedule_work(&local->sdreq_timeout_work);
}
