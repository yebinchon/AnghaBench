
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 TYPE_2__* current ;
 int exports_net_open (int ,struct file*) ;

__attribute__((used)) static int exports_proc_open(struct inode *inode, struct file *file)
{
 return exports_net_open(current->nsproxy->net_ns, file);
}
