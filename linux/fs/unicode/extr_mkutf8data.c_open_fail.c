
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,int,char const*,char*) ;
 char* strerror (int) ;

__attribute__((used)) static void open_fail(const char *name, int error)
{
 printf("Error %d opening %s: %s\n", error, name, strerror(error));
 exit(1);
}
