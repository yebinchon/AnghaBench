
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
typedef int entropy ;
struct TYPE_3__ {int expires; } ;


 unsigned long MSEC_PER_SEC ;
 int add_timer (TYPE_1__*) ;
 int get_random_bytes (int *,int) ;
 int jiffies ;
 int msecs_to_jiffies (unsigned long) ;
 int prandom_seed (int ) ;
 int prandom_u32_max (int) ;
 TYPE_1__ seed_timer ;

__attribute__((used)) static void __prandom_timer(struct timer_list *unused)
{
 u32 entropy;
 unsigned long expires;

 get_random_bytes(&entropy, sizeof(entropy));
 prandom_seed(entropy);


 expires = 40 + prandom_u32_max(40);
 seed_timer.expires = jiffies + msecs_to_jiffies(expires * MSEC_PER_SEC);

 add_timer(&seed_timer);
}
