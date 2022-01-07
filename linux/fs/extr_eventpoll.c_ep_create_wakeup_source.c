
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wakeup_source {int dummy; } ;
struct TYPE_11__ {TYPE_4__* file; } ;
struct epitem {int ws; TYPE_5__ ffd; TYPE_6__* ep; } ;
struct TYPE_12__ {void* ws; } ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct TYPE_10__ {TYPE_3__ f_path; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int ENOMEM ;
 int rcu_assign_pointer (int ,struct wakeup_source*) ;
 void* wakeup_source_register (int *,char const*) ;

__attribute__((used)) static int ep_create_wakeup_source(struct epitem *epi)
{
 const char *name;
 struct wakeup_source *ws;

 if (!epi->ep->ws) {
  epi->ep->ws = wakeup_source_register(((void*)0), "eventpoll");
  if (!epi->ep->ws)
   return -ENOMEM;
 }

 name = epi->ffd.file->f_path.dentry->d_name.name;
 ws = wakeup_source_register(((void*)0), name);

 if (!ws)
  return -ENOMEM;
 rcu_assign_pointer(epi->ws, ws);

 return 0;
}
