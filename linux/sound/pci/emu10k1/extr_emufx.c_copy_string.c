
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void copy_string(char *dst, char *src, char *null, int idx)
{
 if (src == ((void*)0))
  sprintf(dst, "%s %02X", null, idx);
 else
  strcpy(dst, src);
}
