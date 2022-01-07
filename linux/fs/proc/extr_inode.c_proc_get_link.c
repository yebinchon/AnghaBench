
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {char const* data; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int EINVAL ;
 char const* ERR_PTR (int ) ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int proc_put_link ;
 int set_delayed_call (struct delayed_call*,int ,struct proc_dir_entry*) ;
 int use_pde (struct proc_dir_entry*) ;

__attribute__((used)) static const char *proc_get_link(struct dentry *dentry,
     struct inode *inode,
     struct delayed_call *done)
{
 struct proc_dir_entry *pde = PDE(inode);
 if (!use_pde(pde))
  return ERR_PTR(-EINVAL);
 set_delayed_call(done, proc_put_link, pde);
 return pde->data;
}
