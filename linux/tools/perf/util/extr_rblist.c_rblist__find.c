
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int dummy; } ;
struct rb_node {int dummy; } ;


 struct rb_node* __rblist__findnew (struct rblist*,void const*,int) ;

struct rb_node *rblist__find(struct rblist *rblist, const void *entry)
{
 return __rblist__findnew(rblist, entry, 0);
}
