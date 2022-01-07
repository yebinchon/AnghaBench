
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int deleting; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool tcf_proto_is_deleting(struct tcf_proto *tp)
{
 bool deleting;

 spin_lock(&tp->lock);
 deleting = tp->deleting;
 spin_unlock(&tp->lock);

 return deleting;
}
