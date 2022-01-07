
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

__attribute__((used)) static bool symbol_type__filter(char symbol_type)
{
 symbol_type = toupper(symbol_type);
 return symbol_type == 'T' || symbol_type == 'W' || symbol_type == 'D' || symbol_type == 'B';
}
