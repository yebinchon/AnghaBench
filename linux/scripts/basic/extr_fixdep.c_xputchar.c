
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int exit (int) ;
 int perror (char*) ;
 int putchar (int) ;

__attribute__((used)) static void xputchar(int c)
{
 int ret;

 ret = putchar(c);
 if (ret == EOF) {
  perror("fixdep");
  exit(1);
 }
}
