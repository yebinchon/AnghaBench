
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * corrections ;
 int corrections_count ;
 int * unicode_data ;
 int utf8_create (int *) ;

__attribute__((used)) static void utf8_init(void)
{
 unsigned int unichar;
 int i;

 for (unichar = 0; unichar != 0x110000; unichar++)
  utf8_create(&unicode_data[unichar]);

 for (i = 0; i != corrections_count; i++)
  utf8_create(&corrections[i]);
}
