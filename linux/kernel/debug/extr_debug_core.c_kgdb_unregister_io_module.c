
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_io {int name; } ;


 int BUG_ON (int ) ;
 int WARN_ON_ONCE (int) ;
 struct kgdb_io* dbg_io_ops ;
 int kgdb_connected ;
 int kgdb_registration_lock ;
 int kgdb_unregister_callbacks () ;
 int pr_info (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kgdb_unregister_io_module(struct kgdb_io *old_dbg_io_ops)
{
 BUG_ON(kgdb_connected);





 kgdb_unregister_callbacks();

 spin_lock(&kgdb_registration_lock);

 WARN_ON_ONCE(dbg_io_ops != old_dbg_io_ops);
 dbg_io_ops = ((void*)0);

 spin_unlock(&kgdb_registration_lock);

 pr_info("Unregistered I/O driver %s, debugger disabled\n",
  old_dbg_io_ops->name);
}
