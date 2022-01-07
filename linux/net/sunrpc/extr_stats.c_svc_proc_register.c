
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_stat {TYPE_1__* program; } ;
struct proc_dir_entry {int dummy; } ;
struct net {int dummy; } ;
struct file_operations {int dummy; } ;
struct TYPE_2__ {int pg_name; } ;


 struct proc_dir_entry* do_register (struct net*,int ,struct svc_stat*,struct file_operations const*) ;

struct proc_dir_entry *
svc_proc_register(struct net *net, struct svc_stat *statp, const struct file_operations *fops)
{
 return do_register(net, statp->program->pg_name, statp, fops);
}
