
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct external_name {TYPE_2__ u; } ;
struct TYPE_4__ {int hash_len; int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; int d_iname; } ;
struct TYPE_6__ {int head; } ;


 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int dname_external (struct dentry*) ;
 struct external_name* external_name (struct dentry*) ;
 int kfree_rcu (struct external_name*,int ) ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 TYPE_3__ u ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void copy_name(struct dentry *dentry, struct dentry *target)
{
 struct external_name *old_name = ((void*)0);
 if (unlikely(dname_external(dentry)))
  old_name = external_name(dentry);
 if (unlikely(dname_external(target))) {
  atomic_inc(&external_name(target)->u.count);
  dentry->d_name = target->d_name;
 } else {
  memcpy(dentry->d_iname, target->d_name.name,
    target->d_name.len + 1);
  dentry->d_name.name = dentry->d_iname;
  dentry->d_name.hash_len = target->d_name.hash_len;
 }
 if (old_name && likely(atomic_dec_and_test(&old_name->u.count)))
  kfree_rcu(old_name, u.head);
}
