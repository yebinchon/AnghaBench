
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format {int fields; int common_fields; } ;


 int free_format_fields (int ) ;

__attribute__((used)) static void free_formats(struct tep_format *format)
{
 free_format_fields(format->common_fields);
 free_format_fields(format->fields);
}
