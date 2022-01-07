
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int STT_FUNC ;
 int STT_OBJECT ;
 char tolower (char) ;

u8 kallsyms2elf_type(char type)
{
 type = tolower(type);
 return (type == 't' || type == 'w') ? STT_FUNC : STT_OBJECT;
}
