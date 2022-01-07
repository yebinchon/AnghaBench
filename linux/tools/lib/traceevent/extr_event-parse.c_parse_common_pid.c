
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int pid_offset; int pid_size; } ;


 int __parse_common (struct tep_handle*,void*,int *,int *,char*) ;

__attribute__((used)) static int parse_common_pid(struct tep_handle *tep, void *data)
{
 return __parse_common(tep, data,
         &tep->pid_size, &tep->pid_offset,
         "common_pid");
}
