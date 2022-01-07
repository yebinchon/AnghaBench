
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_select (int ,int,char**,int ) ;
 int cmds ;
 int do_help ;

int do_feature(int argc, char **argv)
{
 return cmd_select(cmds, argc, argv, do_help);
}
