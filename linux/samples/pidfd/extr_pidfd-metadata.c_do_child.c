
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int _exit (int ) ;
 int getpid () ;
 int printf (char*,int) ;

__attribute__((used)) static int do_child(void *args)
{
 printf("%d\n", getpid());
 _exit(EXIT_SUCCESS);
}
