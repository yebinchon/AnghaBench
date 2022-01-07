
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * array; } ;
struct ctf_writer {TYPE_1__ data; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int bt_ctf_field_type_put (int ) ;

__attribute__((used)) static void ctf_writer__cleanup_data(struct ctf_writer *cw)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(cw->data.array); i++)
  bt_ctf_field_type_put(cw->data.array[i]);
}
