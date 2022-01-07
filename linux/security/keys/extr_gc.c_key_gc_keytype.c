
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int name; } ;


 int KEY_GC_REAPING_KEYTYPE ;
 int KEY_GC_REAP_KEYTYPE ;
 int TASK_UNINTERRUPTIBLE ;
 int kdebug (char*) ;
 int kenter (char*,int ) ;
 struct key_type* key_gc_dead_keytype ;
 int key_gc_flags ;
 int key_gc_work ;
 int kleave (char*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int smp_mb () ;
 int wait_on_bit (int *,int ,int ) ;

void key_gc_keytype(struct key_type *ktype)
{
 kenter("%s", ktype->name);

 key_gc_dead_keytype = ktype;
 set_bit(KEY_GC_REAPING_KEYTYPE, &key_gc_flags);
 smp_mb();
 set_bit(KEY_GC_REAP_KEYTYPE, &key_gc_flags);

 kdebug("schedule");
 schedule_work(&key_gc_work);

 kdebug("sleep");
 wait_on_bit(&key_gc_flags, KEY_GC_REAPING_KEYTYPE,
      TASK_UNINTERRUPTIBLE);

 key_gc_dead_keytype = ((void*)0);
 kleave("");
}
