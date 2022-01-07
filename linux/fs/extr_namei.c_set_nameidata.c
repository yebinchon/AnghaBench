
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dfd; struct nameidata* saved; int total_link_count; struct filename* name; int internal; int stack; } ;
struct filename {int dummy; } ;
struct TYPE_2__ {struct nameidata* nameidata; } ;


 TYPE_1__* current ;

__attribute__((used)) static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
{
 struct nameidata *old = current->nameidata;
 p->stack = p->internal;
 p->dfd = dfd;
 p->name = name;
 p->total_link_count = old ? old->total_link_count : 0;
 p->saved = old;
 current->nameidata = p;
}
