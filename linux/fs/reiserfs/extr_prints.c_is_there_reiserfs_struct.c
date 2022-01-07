
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *is_there_reiserfs_struct(char *fmt, int *what)
{
 char *k = fmt;

 while ((k = strchr(k, '%')) != ((void*)0)) {
  if (k[1] == 'k' || k[1] == 'K' || k[1] == 'h' || k[1] == 't' ||
      k[1] == 'z' || k[1] == 'b' || k[1] == 'y' || k[1] == 'a') {
   *what = k[1];
   break;
  }
  k++;
 }
 return k;
}
