
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pstore_info {int flags; scalar_t__ name; int buf_lock; int read_mutex; scalar_t__ write_user; int write; int read; struct module* owner; } ;
struct module {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int PSTORE_FLAGS_CONSOLE ;
 int PSTORE_FLAGS_DMESG ;
 int PSTORE_FLAGS_FTRACE ;
 int PSTORE_FLAGS_PMSG ;
 int add_timer (TYPE_1__*) ;
 int allocate_buf_for_compression () ;
 scalar_t__ backend ;
 scalar_t__ jiffies ;
 int module_put (struct module*) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int mutex_init (int *) ;
 int pr_info (char*,scalar_t__) ;
 int pr_warn (char*,scalar_t__,...) ;
 struct pstore_info* psinfo ;
 int pstore_get_records (int ) ;
 scalar_t__ pstore_is_mounted () ;
 int pstore_lock ;
 int pstore_register_console () ;
 int pstore_register_ftrace () ;
 int pstore_register_kmsg () ;
 int pstore_register_pmsg () ;
 TYPE_1__ pstore_timer ;
 scalar_t__ pstore_update_ms ;
 scalar_t__ pstore_write_user_compat ;
 int sema_init (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 int try_module_get (struct module*) ;

int pstore_register(struct pstore_info *psi)
{
 struct module *owner = psi->owner;

 if (backend && strcmp(backend, psi->name)) {
  pr_warn("ignoring unexpected backend '%s'\n", psi->name);
  return -EPERM;
 }


 if (!psi->flags) {
  pr_warn("backend '%s' must support at least one frontend\n",
   psi->name);
  return -EINVAL;
 }


 if (!psi->read || !psi->write) {
  pr_warn("backend '%s' must implement read() and write()\n",
   psi->name);
  return -EINVAL;
 }

 spin_lock(&pstore_lock);
 if (psinfo) {
  pr_warn("backend '%s' already loaded: ignoring '%s'\n",
   psinfo->name, psi->name);
  spin_unlock(&pstore_lock);
  return -EBUSY;
 }

 if (!psi->write_user)
  psi->write_user = pstore_write_user_compat;
 psinfo = psi;
 mutex_init(&psinfo->read_mutex);
 sema_init(&psinfo->buf_lock, 1);
 spin_unlock(&pstore_lock);

 if (owner && !try_module_get(owner)) {
  psinfo = ((void*)0);
  return -EINVAL;
 }

 if (psi->flags & PSTORE_FLAGS_DMESG)
  allocate_buf_for_compression();

 if (pstore_is_mounted())
  pstore_get_records(0);

 if (psi->flags & PSTORE_FLAGS_DMESG)
  pstore_register_kmsg();
 if (psi->flags & PSTORE_FLAGS_CONSOLE)
  pstore_register_console();
 if (psi->flags & PSTORE_FLAGS_FTRACE)
  pstore_register_ftrace();
 if (psi->flags & PSTORE_FLAGS_PMSG)
  pstore_register_pmsg();


 if (pstore_update_ms >= 0) {
  pstore_timer.expires = jiffies +
   msecs_to_jiffies(pstore_update_ms);
  add_timer(&pstore_timer);
 }





 backend = psi->name;

 pr_info("Registered %s as persistent store backend\n", psi->name);

 module_put(owner);

 return 0;
}
