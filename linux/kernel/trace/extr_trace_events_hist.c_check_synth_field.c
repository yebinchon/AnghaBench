
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_field {int type; } ;
struct synth_event {unsigned int n_fields; struct synth_field** fields; } ;
struct hist_field {int type; } ;


 int EINVAL ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int check_synth_field(struct synth_event *event,
        struct hist_field *hist_field,
        unsigned int field_pos)
{
 struct synth_field *field;

 if (field_pos >= event->n_fields)
  return -EINVAL;

 field = event->fields[field_pos];

 if (strcmp(field->type, hist_field->type) != 0)
  return -EINVAL;

 return 0;
}
