
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int filter; } ;
struct TYPE_4__ {int dentry; } ;
struct trace_uprobe {int * inode; TYPE_2__ consumer; int offset; scalar_t__ ref_ctr_offset; TYPE_1__ path; } ;
typedef int filter_func_t ;


 int * d_real_inode (int ) ;
 int uprobe_register (int *,int ,TYPE_2__*) ;
 int uprobe_register_refctr (int *,int ,scalar_t__,TYPE_2__*) ;

__attribute__((used)) static int trace_uprobe_enable(struct trace_uprobe *tu, filter_func_t filter)
{
 int ret;

 tu->consumer.filter = filter;
 tu->inode = d_real_inode(tu->path.dentry);

 if (tu->ref_ctr_offset)
  ret = uprobe_register_refctr(tu->inode, tu->offset,
    tu->ref_ctr_offset, &tu->consumer);
 else
  ret = uprobe_register(tu->inode, tu->offset, &tu->consumer);

 if (ret)
  tu->inode = ((void*)0);

 return ret;
}
