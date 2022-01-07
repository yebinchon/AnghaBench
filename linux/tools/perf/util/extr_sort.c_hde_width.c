
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct hpp_dynamic_entry {int dynamic_len; TYPE_1__ hpp; TYPE_2__* field; } ;
struct TYPE_4__ {int size; int flags; int name; } ;


 int TEP_FIELD_IS_STRING ;
 int strlen (int ) ;

__attribute__((used)) static int hde_width(struct hpp_dynamic_entry *hde)
{
 if (!hde->hpp.len) {
  int len = hde->dynamic_len;
  int namelen = strlen(hde->field->name);
  int fieldlen = hde->field->size;

  if (namelen > len)
   len = namelen;

  if (!(hde->field->flags & TEP_FIELD_IS_STRING)) {

   fieldlen = hde->field->size * 2 + 2;
  }
  if (fieldlen > len)
   len = fieldlen;

  hde->hpp.len = len;
 }
 return hde->hpp.len;
}
