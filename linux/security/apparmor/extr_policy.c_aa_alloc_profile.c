
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aa_proxy {int dummy; } ;
struct TYPE_5__ {struct aa_profile** vec; int flags; int hname; struct aa_proxy* proxy; } ;
struct TYPE_4__ {int hname; } ;
struct aa_profile {TYPE_2__ label; TYPE_1__ base; } ;
typedef int gfp_t ;


 int FLAG_PROFILE ;
 struct aa_proxy* aa_alloc_proxy (TYPE_2__*,int ) ;
 int aa_free_profile (struct aa_profile*) ;
 int aa_get_proxy (struct aa_proxy*) ;
 int aa_label_init (TYPE_2__*,int,int ) ;
 int aa_policy_init (TYPE_1__*,int *,char const*,int ) ;
 struct aa_profile* kzalloc (int,int ) ;

struct aa_profile *aa_alloc_profile(const char *hname, struct aa_proxy *proxy,
        gfp_t gfp)
{
 struct aa_profile *profile;


 profile = kzalloc(sizeof(*profile) + sizeof(struct aa_profile *) * 2,
     gfp);
 if (!profile)
  return ((void*)0);

 if (!aa_policy_init(&profile->base, ((void*)0), hname, gfp))
  goto fail;
 if (!aa_label_init(&profile->label, 1, gfp))
  goto fail;


 if (!proxy) {
  proxy = aa_alloc_proxy(&profile->label, gfp);
  if (!proxy)
   goto fail;
 } else
  aa_get_proxy(proxy);
 profile->label.proxy = proxy;

 profile->label.hname = profile->base.hname;
 profile->label.flags |= FLAG_PROFILE;
 profile->label.vec[0] = profile;


 return profile;

fail:
 aa_free_profile(profile);

 return ((void*)0);
}
