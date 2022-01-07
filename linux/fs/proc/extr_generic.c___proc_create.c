
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {char const* name; int len; } ;
struct proc_dir_entry {int namelen; int * proc_dops; int gid; int uid; int pde_openers; int pde_unload_lock; int refcnt; int subdir; int nlink; int mode; int name; int inline_name; } ;
typedef int nlink_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int SIZEOF_PDE_INLINE_NAME ;
 int WARN (int,char*,...) ;
 scalar_t__ is_empty_pde (struct proc_dir_entry*) ;
 int kmalloc (int,int ) ;
 struct proc_dir_entry* kmem_cache_zalloc (int ,int ) ;
 int memcpy (int ,char const*,int) ;
 unsigned int name_to_int (struct qstr*) ;
 int pde_free (struct proc_dir_entry*) ;
 int proc_dir_entry_cache ;
 int proc_misc_dentry_ops ;
 struct proc_dir_entry proc_root ;
 int proc_set_user (struct proc_dir_entry*,int ,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int strlen (char const*) ;
 scalar_t__ xlate_proc_name (char const*,struct proc_dir_entry**,char const**) ;

__attribute__((used)) static struct proc_dir_entry *__proc_create(struct proc_dir_entry **parent,
       const char *name,
       umode_t mode,
       nlink_t nlink)
{
 struct proc_dir_entry *ent = ((void*)0);
 const char *fn;
 struct qstr qstr;

 if (xlate_proc_name(name, parent, &fn) != 0)
  goto out;
 qstr.name = fn;
 qstr.len = strlen(fn);
 if (qstr.len == 0 || qstr.len >= 256) {
  WARN(1, "name len %u\n", qstr.len);
  return ((void*)0);
 }
 if (qstr.len == 1 && fn[0] == '.') {
  WARN(1, "name '.'\n");
  return ((void*)0);
 }
 if (qstr.len == 2 && fn[0] == '.' && fn[1] == '.') {
  WARN(1, "name '..'\n");
  return ((void*)0);
 }
 if (*parent == &proc_root && name_to_int(&qstr) != ~0U) {
  WARN(1, "create '/proc/%s' by hand\n", qstr.name);
  return ((void*)0);
 }
 if (is_empty_pde(*parent)) {
  WARN(1, "attempt to add to permanently empty directory");
  return ((void*)0);
 }

 ent = kmem_cache_zalloc(proc_dir_entry_cache, GFP_KERNEL);
 if (!ent)
  goto out;

 if (qstr.len + 1 <= SIZEOF_PDE_INLINE_NAME) {
  ent->name = ent->inline_name;
 } else {
  ent->name = kmalloc(qstr.len + 1, GFP_KERNEL);
  if (!ent->name) {
   pde_free(ent);
   return ((void*)0);
  }
 }

 memcpy(ent->name, fn, qstr.len + 1);
 ent->namelen = qstr.len;
 ent->mode = mode;
 ent->nlink = nlink;
 ent->subdir = RB_ROOT;
 refcount_set(&ent->refcnt, 1);
 spin_lock_init(&ent->pde_unload_lock);
 INIT_LIST_HEAD(&ent->pde_openers);
 proc_set_user(ent, (*parent)->uid, (*parent)->gid);

 ent->proc_dops = &proc_misc_dentry_ops;

out:
 return ent;
}
