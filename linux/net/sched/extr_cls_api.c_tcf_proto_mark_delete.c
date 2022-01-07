
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int deleting; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void tcf_proto_mark_delete(struct tcf_proto *tp)
{
 spin_lock(&tp->lock);
 tp->deleting = 1;
 spin_unlock(&tp->lock);
}
