
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_tunables {int attr_set; } ;
struct sugov_policy {int tunables_hook; } ;


 int GFP_KERNEL ;
 struct sugov_tunables* global_tunables ;
 int gov_attr_set_init (int *,int *) ;
 int have_governor_per_policy () ;
 struct sugov_tunables* kzalloc (int,int ) ;

__attribute__((used)) static struct sugov_tunables *sugov_tunables_alloc(struct sugov_policy *sg_policy)
{
 struct sugov_tunables *tunables;

 tunables = kzalloc(sizeof(*tunables), GFP_KERNEL);
 if (tunables) {
  gov_attr_set_init(&tunables->attr_set, &sg_policy->tunables_hook);
  if (!have_governor_per_policy())
   global_tunables = tunables;
 }
 return tunables;
}
