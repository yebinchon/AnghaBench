
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRCLINE_UNKNOWN ;
 int free (char*) ;
 scalar_t__ strcmp (char*,int ) ;

void free_srcline(char *srcline)
{
 if (srcline && strcmp(srcline, SRCLINE_UNKNOWN) != 0)
  free(srcline);
}
