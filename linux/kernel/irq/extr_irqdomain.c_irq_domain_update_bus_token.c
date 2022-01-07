
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int bus_token; char* name; int flags; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;


 int GFP_KERNEL ;
 int IRQ_DOMAIN_NAME_ALLOCATED ;
 int debugfs_add_domain_dir (struct irq_domain*) ;
 int debugfs_remove_domain_dir (struct irq_domain*) ;
 int irq_domain_mutex ;
 char* kasprintf (int ,char*,char*,int) ;
 int kfree (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void irq_domain_update_bus_token(struct irq_domain *domain,
     enum irq_domain_bus_token bus_token)
{
 char *name;

 if (domain->bus_token == bus_token)
  return;

 mutex_lock(&irq_domain_mutex);

 domain->bus_token = bus_token;

 name = kasprintf(GFP_KERNEL, "%s-%d", domain->name, bus_token);
 if (!name) {
  mutex_unlock(&irq_domain_mutex);
  return;
 }

 debugfs_remove_domain_dir(domain);

 if (domain->flags & IRQ_DOMAIN_NAME_ALLOCATED)
  kfree(domain->name);
 else
  domain->flags |= IRQ_DOMAIN_NAME_ALLOCATED;

 domain->name = name;
 debugfs_add_domain_dir(domain);

 mutex_unlock(&irq_domain_mutex);
}
