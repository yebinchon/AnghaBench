
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char tag; } ;
struct TYPE_4__ {TYPE_1__ node; } ;


 TYPE_2__* item_cur ;

void item_set_tag(char tag)
{
 item_cur->node.tag = tag;
}
