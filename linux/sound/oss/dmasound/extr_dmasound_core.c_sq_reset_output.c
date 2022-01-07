
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rear; scalar_t__ user_frag_size; scalar_t__ user_frags; scalar_t__ locked; scalar_t__ front; scalar_t__ rear_size; scalar_t__ count; scalar_t__ active; } ;


 int sound_silence () ;
 TYPE_1__ write_sq ;

__attribute__((used)) static void sq_reset_output(void)
{
 sound_silence();
 write_sq.active = 0;
 write_sq.count = 0;
 write_sq.rear_size = 0;

 write_sq.front = 0 ;
 write_sq.rear = -1 ;


 write_sq.locked = 0 ;
 write_sq.user_frags = 0 ;
 write_sq.user_frag_size = 0 ;
}
