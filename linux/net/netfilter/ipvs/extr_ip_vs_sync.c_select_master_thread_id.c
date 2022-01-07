
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {long threads_mask; } ;
struct ip_vs_conn {int dummy; } ;


 int ilog2 (int) ;

__attribute__((used)) static inline int
select_master_thread_id(struct netns_ipvs *ipvs, struct ip_vs_conn *cp)
{
 return ((long) cp >> (1 + ilog2(sizeof(*cp)))) & ipvs->threads_mask;
}
