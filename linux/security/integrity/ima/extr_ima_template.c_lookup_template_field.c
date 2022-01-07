
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_template_field {int field_id; } ;


 int ARRAY_SIZE (struct ima_template_field const*) ;
 int IMA_TEMPLATE_FIELD_ID_MAX_LEN ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 struct ima_template_field const* supported_fields ;

__attribute__((used)) static const struct ima_template_field *
lookup_template_field(const char *field_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(supported_fields); i++)
  if (strncmp(supported_fields[i].field_id, field_id,
       IMA_TEMPLATE_FIELD_ID_MAX_LEN) == 0)
   return &supported_fields[i];
 return ((void*)0);
}
