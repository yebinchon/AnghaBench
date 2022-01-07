
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_with_options (int,char**,int) ;

__attribute__((used)) static int do_loadall(int argc, char **argv)
{
 return load_with_options(argc, argv, 0);
}
