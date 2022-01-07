
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct key_preparsed_payload {TYPE_1__ payload; } ;


 int kzfree (int ) ;

void user_free_preparse(struct key_preparsed_payload *prep)
{
 kzfree(prep->payload.data[0]);
}
