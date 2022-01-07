
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int swevent_hlist; } ;
struct swevent_hlist {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct swevent_hlist*,int ) ;
 int rcu_head ;
 struct swevent_hlist* swevent_hlist_deref (struct swevent_htable*) ;

__attribute__((used)) static void swevent_hlist_release(struct swevent_htable *swhash)
{
 struct swevent_hlist *hlist = swevent_hlist_deref(swhash);

 if (!hlist)
  return;

 RCU_INIT_POINTER(swhash->swevent_hlist, ((void*)0));
 kfree_rcu(hlist, rcu_head);
}
