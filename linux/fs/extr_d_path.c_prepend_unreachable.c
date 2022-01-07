
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prepend (char**,int*,char*,int) ;

__attribute__((used)) static int prepend_unreachable(char **buffer, int *buflen)
{
 return prepend(buffer, buflen, "(unreachable)", 13);
}
