
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

bool kallsyms__is_function(char symbol_type)
{
 symbol_type = toupper(symbol_type);
 return symbol_type == 'T' || symbol_type == 'W';
}
