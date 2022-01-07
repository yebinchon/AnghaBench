
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ovl_entry {int numlower; TYPE_2__* lowerstack; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_4__ {struct dentry* dentry; TYPE_1__* layer; } ;
struct TYPE_3__ {int idx; } ;


 struct dentry* ovl_dentry_upper (struct dentry*) ;

__attribute__((used)) static struct dentry *ovl_dentry_real_at(struct dentry *dentry, int idx)
{
 struct ovl_entry *oe = dentry->d_fsdata;
 int i;

 if (!idx)
  return ovl_dentry_upper(dentry);

 for (i = 0; i < oe->numlower; i++) {
  if (oe->lowerstack[i].layer->idx == idx)
   return oe->lowerstack[i].dentry;
 }

 return ((void*)0);
}
