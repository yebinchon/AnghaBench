
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_HLIST_HEAD (int *) ;
 int batadv_algo_list ;

void batadv_algo_init(void)
{
 INIT_HLIST_HEAD(&batadv_algo_list);
}
