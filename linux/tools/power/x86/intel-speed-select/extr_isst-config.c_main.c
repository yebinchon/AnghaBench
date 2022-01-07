
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline (int,char**) ;
 int outf ;
 int stderr ;

int main(int argc, char **argv)
{
 outf = stderr;
 cmdline(argc, argv);
 return 0;
}
