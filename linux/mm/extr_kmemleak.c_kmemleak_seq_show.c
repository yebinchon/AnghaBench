
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct kmemleak_object {int flags; int lock; } ;


 int OBJECT_REPORTED ;
 int print_unreferenced (struct seq_file*,struct kmemleak_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unreferenced_object (struct kmemleak_object*) ;

__attribute__((used)) static int kmemleak_seq_show(struct seq_file *seq, void *v)
{
 struct kmemleak_object *object = v;
 unsigned long flags;

 spin_lock_irqsave(&object->lock, flags);
 if ((object->flags & OBJECT_REPORTED) && unreferenced_object(object))
  print_unreferenced(seq, object);
 spin_unlock_irqrestore(&object->lock, flags);
 return 0;
}
