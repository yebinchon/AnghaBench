
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_info {int flags; } ;


 int PSTORE_FLAGS_CONSOLE ;
 int PSTORE_FLAGS_DMESG ;
 int PSTORE_FLAGS_FTRACE ;
 int PSTORE_FLAGS_PMSG ;
 int * backend ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int free_buf_for_compression () ;
 int * psinfo ;
 int pstore_timer ;
 int pstore_unregister_console () ;
 int pstore_unregister_ftrace () ;
 int pstore_unregister_kmsg () ;
 int pstore_unregister_pmsg () ;
 int pstore_update_ms ;
 int pstore_work ;

void pstore_unregister(struct pstore_info *psi)
{

 pstore_update_ms = -1;
 del_timer_sync(&pstore_timer);
 flush_work(&pstore_work);

 if (psi->flags & PSTORE_FLAGS_PMSG)
  pstore_unregister_pmsg();
 if (psi->flags & PSTORE_FLAGS_FTRACE)
  pstore_unregister_ftrace();
 if (psi->flags & PSTORE_FLAGS_CONSOLE)
  pstore_unregister_console();
 if (psi->flags & PSTORE_FLAGS_DMESG)
  pstore_unregister_kmsg();

 free_buf_for_compression();

 psinfo = ((void*)0);
 backend = ((void*)0);
}
