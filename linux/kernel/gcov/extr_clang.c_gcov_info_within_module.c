
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct gcov_info {scalar_t__ filename; } ;


 int within_module (unsigned long,struct module*) ;

bool gcov_info_within_module(struct gcov_info *info, struct module *mod)
{
 return within_module((unsigned long)info->filename, mod);
}
