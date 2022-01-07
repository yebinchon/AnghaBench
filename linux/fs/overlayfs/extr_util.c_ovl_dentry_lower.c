
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_entry {TYPE_1__* lowerstack; scalar_t__ numlower; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_2__ {struct dentry* dentry; } ;



struct dentry *ovl_dentry_lower(struct dentry *dentry)
{
 struct ovl_entry *oe = dentry->d_fsdata;

 return oe->numlower ? oe->lowerstack[0].dentry : ((void*)0);
}
