
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ovl_entry {int numlower; TYPE_3__* lowerstack; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_6__ {TYPE_2__* layer; } ;
struct TYPE_5__ {int idx; } ;
struct TYPE_4__ {struct dentry* s_root; } ;


 struct ovl_entry* OVL_E (struct dentry*) ;
 int OVL_INDEX ;
 int d_inode (struct dentry*) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;
 int ovl_test_flag (int ,int ) ;

__attribute__((used)) static int ovl_connectable_layer(struct dentry *dentry)
{
 struct ovl_entry *oe = OVL_E(dentry);


 if (dentry == dentry->d_sb->s_root)
  return oe->numlower;





 if (ovl_dentry_upper(dentry) &&
     !ovl_test_flag(OVL_INDEX, d_inode(dentry)))
  return 0;


 return oe->lowerstack[0].layer->idx;
}
