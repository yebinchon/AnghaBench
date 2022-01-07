
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fuse_main (int,char**,int *,int *) ;
 int memfd_ops ;

int main(int argc, char *argv[])
{
 return fuse_main(argc, argv, &memfd_ops, ((void*)0));
}
