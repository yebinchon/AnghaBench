
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int i_mmap; int private_lock; int private_list; int i_mmap_rwsem; int i_pages; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int XA_FLAGS_ACCOUNT ;
 int XA_FLAGS_LOCK_IRQ ;
 int init_rwsem (int *) ;
 int spin_lock_init (int *) ;
 int xa_init_flags (int *,int) ;

__attribute__((used)) static void __address_space_init_once(struct address_space *mapping)
{
 xa_init_flags(&mapping->i_pages, XA_FLAGS_LOCK_IRQ | XA_FLAGS_ACCOUNT);
 init_rwsem(&mapping->i_mmap_rwsem);
 INIT_LIST_HEAD(&mapping->private_list);
 spin_lock_init(&mapping->private_lock);
 mapping->i_mmap = RB_ROOT_CACHED;
}
