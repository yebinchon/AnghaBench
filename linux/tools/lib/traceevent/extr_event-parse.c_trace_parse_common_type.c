
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int type_offset; int type_size; } ;


 int __parse_common (struct tep_handle*,void*,int *,int *,char*) ;

__attribute__((used)) static int trace_parse_common_type(struct tep_handle *tep, void *data)
{
 return __parse_common(tep, data,
         &tep->type_size, &tep->type_offset,
         "common_type");
}
