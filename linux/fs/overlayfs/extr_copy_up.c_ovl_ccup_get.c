
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int sprintf (char*,char*) ;

__attribute__((used)) static int ovl_ccup_get(char *buf, const struct kernel_param *param)
{
 return sprintf(buf, "N\n");
}
