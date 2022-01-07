
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cplus_demangle (char*,int ) ;
 int printf (char*,char*) ;

int main(void)
{
 char symbol[4096] = "FieldName__9ClassNameFd";
 char *tmp;

 tmp = cplus_demangle(symbol, 0);

 printf("demangled symbol: {%s}\n", tmp);

 return 0;
}
