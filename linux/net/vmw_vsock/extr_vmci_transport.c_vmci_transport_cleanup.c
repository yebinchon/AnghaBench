
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int LIST_HEAD (int ) ;
 int list_replace_init (int *,int *) ;
 int pending ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vmci_transport_cleanup_list ;
 int vmci_transport_cleanup_lock ;
 int vmci_transport_free_resources (int *) ;

__attribute__((used)) static void vmci_transport_cleanup(struct work_struct *work)
{
 LIST_HEAD(pending);

 spin_lock_bh(&vmci_transport_cleanup_lock);
 list_replace_init(&vmci_transport_cleanup_list, &pending);
 spin_unlock_bh(&vmci_transport_cleanup_lock);
 vmci_transport_free_resources(&pending);
}
