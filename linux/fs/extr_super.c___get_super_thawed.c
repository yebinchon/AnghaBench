
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frozen; int wait_unfrozen; } ;
struct super_block {TYPE_1__ s_writers; int s_umount; } ;
struct block_device {int dummy; } ;


 scalar_t__ SB_UNFROZEN ;
 struct super_block* __get_super (struct block_device*,int) ;
 int put_super (struct super_block*) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static struct super_block *__get_super_thawed(struct block_device *bdev,
           bool excl)
{
 while (1) {
  struct super_block *s = __get_super(bdev, excl);
  if (!s || s->s_writers.frozen == SB_UNFROZEN)
   return s;
  if (!excl)
   up_read(&s->s_umount);
  else
   up_write(&s->s_umount);
  wait_event(s->s_writers.wait_unfrozen,
      s->s_writers.frozen == SB_UNFROZEN);
  put_super(s);
 }
}
