
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int pc_offset; int pc_size; } ;


 int __parse_common (struct tep_handle*,void*,int *,int *,char*) ;

__attribute__((used)) static int parse_common_pc(struct tep_handle *tep, void *data)
{
 return __parse_common(tep, data,
         &tep->pc_size, &tep->pc_offset,
         "common_preempt_count");
}
