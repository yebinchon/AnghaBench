
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {int mnt; int dentry; } ;
struct ovl_entry {int numlower; TYPE_2__* lowerstack; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_4__ {TYPE_1__* layer; int dentry; } ;
struct TYPE_3__ {int mnt; } ;


 int BUG_ON (int) ;
 int ovl_path_upper (struct dentry*,struct path*) ;

int ovl_path_next(int idx, struct dentry *dentry, struct path *path)
{
 struct ovl_entry *oe = dentry->d_fsdata;

 BUG_ON(idx < 0);
 if (idx == 0) {
  ovl_path_upper(dentry, path);
  if (path->dentry)
   return oe->numlower ? 1 : -1;
  idx++;
 }
 BUG_ON(idx > oe->numlower);
 path->dentry = oe->lowerstack[idx - 1].dentry;
 path->mnt = oe->lowerstack[idx - 1].layer->mnt;

 return (idx < oe->numlower) ? idx + 1 : -1;
}
