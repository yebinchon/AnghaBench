
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_tag {int usage; } ;


 int kfree_rcu (struct key_tag*,int ) ;
 int rcu ;
 scalar_t__ refcount_dec_and_test (int *) ;

bool key_put_tag(struct key_tag *tag)
{
 if (refcount_dec_and_test(&tag->usage)) {
  kfree_rcu(tag, rcu);
  return 1;
 }

 return 0;
}
