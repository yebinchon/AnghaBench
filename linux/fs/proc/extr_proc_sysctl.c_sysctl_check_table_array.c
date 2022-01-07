
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {scalar_t__ proc_handler; int maxlen; } ;


 scalar_t__ proc_douintvec ;
 scalar_t__ proc_douintvec_minmax ;
 int sysctl_err (char const*,struct ctl_table*,char*) ;

__attribute__((used)) static int sysctl_check_table_array(const char *path, struct ctl_table *table)
{
 int err = 0;

 if ((table->proc_handler == proc_douintvec) ||
     (table->proc_handler == proc_douintvec_minmax)) {
  if (table->maxlen != sizeof(unsigned int))
   err |= sysctl_err(path, table, "array not allowed");
 }

 return err;
}
