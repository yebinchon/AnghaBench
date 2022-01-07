
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {TYPE_4__* kn; int event; } ;
struct TYPE_7__ {TYPE_2__* ops; TYPE_1__* open; } ;
struct TYPE_8__ {TYPE_3__ attr; } ;
struct TYPE_6__ {int (* seq_show ) (struct seq_file*,void*) ;} ;
struct TYPE_5__ {int event; } ;


 int atomic_read (int *) ;
 int stub1 (struct seq_file*,void*) ;

__attribute__((used)) static int kernfs_seq_show(struct seq_file *sf, void *v)
{
 struct kernfs_open_file *of = sf->private;

 of->event = atomic_read(&of->kn->attr.open->event);

 return of->kn->attr.ops->seq_show(sf, v);
}
