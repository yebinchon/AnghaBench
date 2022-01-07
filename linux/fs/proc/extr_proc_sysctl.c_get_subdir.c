
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ctl_table_set {int dummy; } ;
struct TYPE_3__ {int nreg; struct ctl_table_set* set; } ;
struct ctl_dir {TYPE_1__ header; } ;


 int ENOENT ;
 int ENOMEM ;
 struct ctl_dir* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ctl_dir*) ;
 int PTR_ERR (struct ctl_dir*) ;
 int drop_sysctl_table (TYPE_1__*) ;
 struct ctl_dir* find_subdir (struct ctl_dir*,char const*,int) ;
 int insert_header (struct ctl_dir*,TYPE_1__*) ;
 struct ctl_dir* new_dir (struct ctl_table_set*,char const*,int) ;
 int pr_cont (char*,int,int,char const*,int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 int sysctl_print_dir (struct ctl_dir*) ;

__attribute__((used)) static struct ctl_dir *get_subdir(struct ctl_dir *dir,
      const char *name, int namelen)
{
 struct ctl_table_set *set = dir->header.set;
 struct ctl_dir *subdir, *new = ((void*)0);
 int err;

 spin_lock(&sysctl_lock);
 subdir = find_subdir(dir, name, namelen);
 if (!IS_ERR(subdir))
  goto found;
 if (PTR_ERR(subdir) != -ENOENT)
  goto failed;

 spin_unlock(&sysctl_lock);
 new = new_dir(set, name, namelen);
 spin_lock(&sysctl_lock);
 subdir = ERR_PTR(-ENOMEM);
 if (!new)
  goto failed;


 subdir = find_subdir(dir, name, namelen);
 if (!IS_ERR(subdir))
  goto found;
 if (PTR_ERR(subdir) != -ENOENT)
  goto failed;


 err = insert_header(dir, &new->header);
 subdir = ERR_PTR(err);
 if (err)
  goto failed;
 subdir = new;
found:
 subdir->header.nreg++;
failed:
 if (IS_ERR(subdir)) {
  pr_err("sysctl could not get directory: ");
  sysctl_print_dir(dir);
  pr_cont("/%*.*s %ld\n",
   namelen, namelen, name, PTR_ERR(subdir));
 }
 drop_sysctl_table(&dir->header);
 if (new)
  drop_sysctl_table(&new->header);
 spin_unlock(&sysctl_lock);
 return subdir;
}
