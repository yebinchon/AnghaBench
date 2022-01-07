
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_GC_KEY_EXPIRED ;
 int key_gc_flags ;
 int key_gc_work ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

void key_schedule_gc_links(void)
{
 set_bit(KEY_GC_KEY_EXPIRED, &key_gc_flags);
 schedule_work(&key_gc_work);
}
