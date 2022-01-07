
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ima_template_entry {TYPE_2__* template_data; TYPE_1__* template_desc; } ;
struct TYPE_4__ {struct ima_template_entry* data; } ;
struct TYPE_3__ {int num_fields; } ;


 int kfree (struct ima_template_entry*) ;

void ima_free_template_entry(struct ima_template_entry *entry)
{
 int i;

 for (i = 0; i < entry->template_desc->num_fields; i++)
  kfree(entry->template_data[i].data);

 kfree(entry);
}
