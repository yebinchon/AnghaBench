
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_domain {int * flavour; int * name; int ref; } ;
struct unix_domain {struct auth_domain h; } ;


 int GFP_KERNEL ;
 struct auth_domain* auth_domain_find (char*) ;
 struct auth_domain* auth_domain_lookup (char*,struct auth_domain*) ;
 int auth_domain_put (struct auth_domain*) ;
 int kfree (struct unix_domain*) ;
 struct unix_domain* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int * kstrdup (char*,int ) ;
 int svcauth_unix ;
 int svcauth_unix_domain_release (struct auth_domain*) ;

struct auth_domain *unix_domain_find(char *name)
{
 struct auth_domain *rv;
 struct unix_domain *new = ((void*)0);

 rv = auth_domain_find(name);
 while(1) {
  if (rv) {
   if (new && rv != &new->h)
    svcauth_unix_domain_release(&new->h);

   if (rv->flavour != &svcauth_unix) {
    auth_domain_put(rv);
    return ((void*)0);
   }
   return rv;
  }

  new = kmalloc(sizeof(*new), GFP_KERNEL);
  if (new == ((void*)0))
   return ((void*)0);
  kref_init(&new->h.ref);
  new->h.name = kstrdup(name, GFP_KERNEL);
  if (new->h.name == ((void*)0)) {
   kfree(new);
   return ((void*)0);
  }
  new->h.flavour = &svcauth_unix;
  rv = auth_domain_lookup(name, &new->h);
 }
}
