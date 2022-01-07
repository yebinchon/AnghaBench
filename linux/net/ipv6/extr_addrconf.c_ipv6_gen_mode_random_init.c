
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipv6_stable_secret {int initialized; int secret; } ;
struct TYPE_2__ {struct ipv6_stable_secret stable_secret; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int get_random_bytes (int *,int) ;

__attribute__((used)) static void ipv6_gen_mode_random_init(struct inet6_dev *idev)
{
 struct ipv6_stable_secret *s = &idev->cnf.stable_secret;

 if (s->initialized)
  return;
 s = &idev->cnf.stable_secret;
 get_random_bytes(&s->secret, sizeof(s->secret));
 s->initialized = 1;
}
