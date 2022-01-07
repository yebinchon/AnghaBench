
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* initial_path ;
 scalar_t__ initial_pathlen ;
 int strlen (char*) ;
 int xasprintf (char**,char*,char*) ;

__attribute__((used)) static void set_initial_path(char *fname)
{
 int i, len = strlen(fname);

 xasprintf(&initial_path, "%s", fname);
 initial_pathlen = 0;
 for (i = 0; i != len; i++)
  if (initial_path[i] == '/')
   initial_pathlen++;
}
