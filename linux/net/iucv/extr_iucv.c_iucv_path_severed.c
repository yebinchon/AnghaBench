
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iucv_path_severed {size_t ippathid; int ipuser; } ;
struct iucv_path {size_t pathid; int list; TYPE_1__* handler; } ;
struct iucv_irq_data {int dummy; } ;
struct TYPE_2__ {int (* path_severed ) (struct iucv_path*,int ) ;} ;


 int iucv_path_free (struct iucv_path*) ;
 struct iucv_path** iucv_path_table ;
 int iucv_sever_pathid (size_t,int *) ;
 int list_del (int *) ;
 int stub1 (struct iucv_path*,int ) ;

__attribute__((used)) static void iucv_path_severed(struct iucv_irq_data *data)
{
 struct iucv_path_severed *ips = (void *) data;
 struct iucv_path *path = iucv_path_table[ips->ippathid];

 if (!path || !path->handler)
  return;
 if (path->handler->path_severed)
  path->handler->path_severed(path, ips->ipuser);
 else {
  iucv_sever_pathid(path->pathid, ((void*)0));
  iucv_path_table[path->pathid] = ((void*)0);
  list_del(&path->list);
  iucv_path_free(path);
 }
}
