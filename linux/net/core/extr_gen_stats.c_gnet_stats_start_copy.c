
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct gnet_dump {int dummy; } ;
typedef int spinlock_t ;


 int gnet_stats_start_copy_compat (struct sk_buff*,int,int ,int ,int *,struct gnet_dump*,int) ;

int
gnet_stats_start_copy(struct sk_buff *skb, int type, spinlock_t *lock,
        struct gnet_dump *d, int padattr)
{
 return gnet_stats_start_copy_compat(skb, type, 0, 0, lock, d, padattr);
}
