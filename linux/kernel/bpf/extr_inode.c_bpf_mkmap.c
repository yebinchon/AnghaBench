
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
struct bpf_map {int dummy; } ;


 int bpf_map_iops ;
 scalar_t__ bpf_map_support_seq_show (struct bpf_map*) ;
 int bpf_mkobj_ops (struct dentry*,int ,void*,int *,int *) ;
 int bpffs_map_fops ;
 int bpffs_obj_fops ;

__attribute__((used)) static int bpf_mkmap(struct dentry *dentry, umode_t mode, void *arg)
{
 struct bpf_map *map = arg;

 return bpf_mkobj_ops(dentry, mode, arg, &bpf_map_iops,
        bpf_map_support_seq_show(map) ?
        &bpffs_map_fops : &bpffs_obj_fops);
}
