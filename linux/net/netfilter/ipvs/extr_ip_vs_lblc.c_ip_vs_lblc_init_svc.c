
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_lblc_table* sched_data; } ;
struct ip_vs_lblc_table {int max_size; int counter; int dead; int periodic_timer; int entries; struct ip_vs_service* svc; scalar_t__ rover; int * bucket; } ;


 scalar_t__ CHECK_EXPIRE_INTERVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_LBLC_TAB_SIZE ;
 int atomic_set (int *,int ) ;
 int ip_vs_lblc_check_expire ;
 scalar_t__ jiffies ;
 struct ip_vs_lblc_table* kmalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ip_vs_lblc_init_svc(struct ip_vs_service *svc)
{
 int i;
 struct ip_vs_lblc_table *tbl;




 tbl = kmalloc(sizeof(*tbl), GFP_KERNEL);
 if (tbl == ((void*)0))
  return -ENOMEM;

 svc->sched_data = tbl;
 IP_VS_DBG(6, "LBLC hash table (memory=%zdbytes) allocated for "
    "current service\n", sizeof(*tbl));




 for (i = 0; i < IP_VS_LBLC_TAB_SIZE; i++) {
  INIT_HLIST_HEAD(&tbl->bucket[i]);
 }
 tbl->max_size = IP_VS_LBLC_TAB_SIZE*16;
 tbl->rover = 0;
 tbl->counter = 1;
 tbl->dead = 0;
 tbl->svc = svc;
 atomic_set(&tbl->entries, 0);




 timer_setup(&tbl->periodic_timer, ip_vs_lblc_check_expire, 0);
 mod_timer(&tbl->periodic_timer, jiffies + CHECK_EXPIRE_INTERVAL);

 return 0;
}
