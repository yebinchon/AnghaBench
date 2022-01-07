
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int name; int link; } ;


 int down_write (int *) ;
 int downgrade_write (int *) ;
 int key_gc_keytype (struct key_type*) ;
 int key_types_sem ;
 int list_del_init (int *) ;
 int pr_notice (char*,int ) ;
 int up_read (int *) ;

void unregister_key_type(struct key_type *ktype)
{
 down_write(&key_types_sem);
 list_del_init(&ktype->link);
 downgrade_write(&key_types_sem);
 key_gc_keytype(ktype);
 pr_notice("Key type %s unregistered\n", ktype->name);
 up_read(&key_types_sem);
}
