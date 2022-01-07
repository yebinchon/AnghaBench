
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bfd_demangle (int ,char*,int ) ;
 int printf (char*,char*) ;

int main(void)
{
 char symbol[4096] = "FieldName__9ClassNameFd";
 char *tmp;

 tmp = bfd_demangle(0, symbol, 0);

 printf("demangled symbol: {%s}\n", tmp);

 return 0;
}
