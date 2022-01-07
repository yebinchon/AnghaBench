
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct auth_domain {struct gss_domain* name; int * flavour; int ref; } ;
struct gss_domain {struct auth_domain h; int pseudoflavor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct auth_domain* auth_domain_lookup (char*,struct auth_domain*) ;
 int auth_domain_put (struct auth_domain*) ;
 int kfree (struct gss_domain*) ;
 struct gss_domain* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct gss_domain* kstrdup (char*,int ) ;
 int svcauthops_gss ;

int
svcauth_gss_register_pseudoflavor(u32 pseudoflavor, char * name)
{
 struct gss_domain *new;
 struct auth_domain *test;
 int stat = -ENOMEM;

 new = kmalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  goto out;
 kref_init(&new->h.ref);
 new->h.name = kstrdup(name, GFP_KERNEL);
 if (!new->h.name)
  goto out_free_dom;
 new->h.flavour = &svcauthops_gss;
 new->pseudoflavor = pseudoflavor;

 stat = 0;
 test = auth_domain_lookup(name, &new->h);
 if (test != &new->h) {
  auth_domain_put(test);
  kfree(new->h.name);
  goto out_free_dom;
 }
 return 0;

out_free_dom:
 kfree(new);
out:
 return stat;
}
