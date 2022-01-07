
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct annotation_line {int node; } ;


 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void annotation_line__add(struct annotation_line *al, struct list_head *head)
{
 list_add_tail(&al->node, head);
}
