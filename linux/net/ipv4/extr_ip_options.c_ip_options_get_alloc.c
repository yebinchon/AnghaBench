
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_options_rcu {int dummy; } ;


 int GFP_KERNEL ;
 struct ip_options_rcu* kzalloc (int,int ) ;

__attribute__((used)) static struct ip_options_rcu *ip_options_get_alloc(const int optlen)
{
 return kzalloc(sizeof(struct ip_options_rcu) + ((optlen + 3) & ~3),
         GFP_KERNEL);
}
