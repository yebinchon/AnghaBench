
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* last_cmd ;
 char* last_cmd_loc ;

__attribute__((used)) static void hist_err_clear(void)
{
 last_cmd[0] = '\0';
 last_cmd_loc[0] = '\0';
}
