
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_entry {int numlower; TYPE_1__* lowerstack; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_2__ {struct dentry* dentry; } ;



struct dentry *ovl_dentry_lowerdata(struct dentry *dentry)
{
 struct ovl_entry *oe = dentry->d_fsdata;

 return oe->numlower ? oe->lowerstack[oe->numlower - 1].dentry : ((void*)0);
}
