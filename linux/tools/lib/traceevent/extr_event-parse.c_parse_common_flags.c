
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int flags_offset; int flags_size; } ;


 int __parse_common (struct tep_handle*,void*,int *,int *,char*) ;

__attribute__((used)) static int parse_common_flags(struct tep_handle *tep, void *data)
{
 return __parse_common(tep, data,
         &tep->flags_size, &tep->flags_offset,
         "common_flags");
}
