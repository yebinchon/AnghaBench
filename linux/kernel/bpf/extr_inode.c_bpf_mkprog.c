
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 int bpf_mkobj_ops (struct dentry*,int ,void*,int *,int *) ;
 int bpf_prog_iops ;
 int bpffs_obj_fops ;

__attribute__((used)) static int bpf_mkprog(struct dentry *dentry, umode_t mode, void *arg)
{
 return bpf_mkobj_ops(dentry, mode, arg, &bpf_prog_iops,
        &bpffs_obj_fops);
}
