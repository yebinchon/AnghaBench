
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_sched_data {int clhash; } ;
struct cbq_class {struct cbq_class* sibling; TYPE_1__* tparent; int common; int qdisc; } ;
struct TYPE_2__ {struct cbq_class* children; } ;


 int WARN_ON (int) ;
 int qdisc_class_hash_remove (int *,int *) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_unlink_class(struct cbq_class *this)
{
 struct cbq_class *cl, **clp;
 struct cbq_sched_data *q = qdisc_priv(this->qdisc);

 qdisc_class_hash_remove(&q->clhash, &this->common);

 if (this->tparent) {
  clp = &this->sibling;
  cl = *clp;
  do {
   if (cl == this) {
    *clp = cl->sibling;
    break;
   }
   clp = &cl->sibling;
  } while ((cl = *clp) != this->sibling);

  if (this->tparent->children == this) {
   this->tparent->children = this->sibling;
   if (this->sibling == this)
    this->tparent->children = ((void*)0);
  }
 } else {
  WARN_ON(this->sibling != this);
 }
}
