
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_dh_state* sched_data; } ;
struct ip_vs_dh_state {int dummy; } ;
struct ip_vs_dest {int dummy; } ;


 int ip_vs_dh_reassign (struct ip_vs_dh_state*,struct ip_vs_service*) ;

__attribute__((used)) static int ip_vs_dh_dest_changed(struct ip_vs_service *svc,
     struct ip_vs_dest *dest)
{
 struct ip_vs_dh_state *s = svc->sched_data;


 ip_vs_dh_reassign(s, svc);

 return 0;
}
