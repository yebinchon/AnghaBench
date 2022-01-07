
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*) ;

__attribute__((used)) static void wp_ro_skip_msg(void)
{

 pr_debug("Hardware does not support read only watchpoints.\n");

}
