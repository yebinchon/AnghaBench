
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; scalar_t__ len; } ;
struct name_snapshot {int inline_name; TYPE_1__ name; } ;
struct dentry {int d_lock; TYPE_1__ d_name; int d_iname; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 int atomic_inc (int *) ;
 int dname_external (struct dentry*) ;
 TYPE_3__* external_name (struct dentry*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

void take_dentry_name_snapshot(struct name_snapshot *name, struct dentry *dentry)
{
 spin_lock(&dentry->d_lock);
 name->name = dentry->d_name;
 if (unlikely(dname_external(dentry))) {
  atomic_inc(&external_name(dentry)->u.count);
 } else {
  memcpy(name->inline_name, dentry->d_iname,
         dentry->d_name.len + 1);
  name->name.name = name->inline_name;
 }
 spin_unlock(&dentry->d_lock);
}
