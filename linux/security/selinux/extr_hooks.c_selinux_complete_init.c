
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delayed_superblock_init ;
 int iterate_supers (int ,int *) ;
 int pr_debug (char*) ;

void selinux_complete_init(void)
{
 pr_debug("SELinux:  Completing initialization.\n");


 pr_debug("SELinux:  Setting up existing superblocks.\n");
 iterate_supers(delayed_superblock_init, ((void*)0));
}
