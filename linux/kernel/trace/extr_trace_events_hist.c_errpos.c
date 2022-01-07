
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err_pos (int ,char*) ;
 int last_cmd ;

__attribute__((used)) static int errpos(char *str)
{
 return err_pos(last_cmd, str);
}
