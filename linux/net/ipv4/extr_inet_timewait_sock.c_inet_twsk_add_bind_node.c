
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int tw_bind_node; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head (int *,struct hlist_head*) ;

__attribute__((used)) static void inet_twsk_add_bind_node(struct inet_timewait_sock *tw,
        struct hlist_head *list)
{
 hlist_add_head(&tw->tw_bind_node, list);
}
