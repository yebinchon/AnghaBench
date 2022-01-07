
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct async_entry {int work; int global_list; int domain_list; scalar_t__ cookie; struct async_domain* domain; void* data; int (* func ) (void*,scalar_t__) ;} ;
struct async_domain {scalar_t__ registered; int pending; } ;
typedef int (* async_func_t ) (void*,scalar_t__) ;
typedef scalar_t__ async_cookie_t ;
struct TYPE_2__ {int flags; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ MAX_WORK ;
 int PF_USED_ASYNC ;
 int async_global_pending ;
 int async_lock ;
 int async_run_entry_fn ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 int entry_count ;
 int kfree (struct async_entry*) ;
 struct async_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int next_cookie ;
 int queue_work_node (int,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_unbound_wq ;

async_cookie_t async_schedule_node_domain(async_func_t func, void *data,
       int node, struct async_domain *domain)
{
 struct async_entry *entry;
 unsigned long flags;
 async_cookie_t newcookie;


 entry = kzalloc(sizeof(struct async_entry), GFP_ATOMIC);





 if (!entry || atomic_read(&entry_count) > MAX_WORK) {
  kfree(entry);
  spin_lock_irqsave(&async_lock, flags);
  newcookie = next_cookie++;
  spin_unlock_irqrestore(&async_lock, flags);


  func(data, newcookie);
  return newcookie;
 }
 INIT_LIST_HEAD(&entry->domain_list);
 INIT_LIST_HEAD(&entry->global_list);
 INIT_WORK(&entry->work, async_run_entry_fn);
 entry->func = func;
 entry->data = data;
 entry->domain = domain;

 spin_lock_irqsave(&async_lock, flags);


 newcookie = entry->cookie = next_cookie++;

 list_add_tail(&entry->domain_list, &domain->pending);
 if (domain->registered)
  list_add_tail(&entry->global_list, &async_global_pending);

 atomic_inc(&entry_count);
 spin_unlock_irqrestore(&async_lock, flags);


 current->flags |= PF_USED_ASYNC;


 queue_work_node(node, system_unbound_wq, &entry->work);

 return newcookie;
}
