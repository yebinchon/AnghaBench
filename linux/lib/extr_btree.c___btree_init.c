
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {scalar_t__ height; int * node; } ;



__attribute__((used)) static inline void __btree_init(struct btree_head *head)
{
 head->node = ((void*)0);
 head->height = 0;
}
