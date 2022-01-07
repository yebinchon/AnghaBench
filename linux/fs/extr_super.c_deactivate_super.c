
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; int s_active; } ;


 int atomic_add_unless (int *,int,int) ;
 int deactivate_locked_super (struct super_block*) ;
 int down_write (int *) ;

void deactivate_super(struct super_block *s)
{
        if (!atomic_add_unless(&s->s_active, -1, 1)) {
  down_write(&s->s_umount);
  deactivate_locked_super(s);
 }
}
