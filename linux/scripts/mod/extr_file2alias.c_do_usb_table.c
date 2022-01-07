
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;


 unsigned long SIZE_usb_device_id ;
 int device_id_check (int ,char*,unsigned long,unsigned long const,void*) ;
 int do_usb_entry_multi (void*,struct module*) ;

__attribute__((used)) static void do_usb_table(void *symval, unsigned long size,
    struct module *mod)
{
 unsigned int i;
 const unsigned long id_size = SIZE_usb_device_id;

 device_id_check(mod->name, "usb", size, id_size, symval);


 size -= id_size;

 for (i = 0; i < size; i += id_size)
  do_usb_entry_multi(symval + i, mod);
}
