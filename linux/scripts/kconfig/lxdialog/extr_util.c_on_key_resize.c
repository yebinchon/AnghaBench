
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_RESIZE ;
 int dialog_clear () ;

int on_key_resize(void)
{
 dialog_clear();
 return KEY_RESIZE;
}
