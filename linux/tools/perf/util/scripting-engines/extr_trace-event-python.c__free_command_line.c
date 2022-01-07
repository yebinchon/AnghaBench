
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char const**) ;

__attribute__((used)) static void _free_command_line(const char **command_line, int num)
{
 free(command_line);
}
