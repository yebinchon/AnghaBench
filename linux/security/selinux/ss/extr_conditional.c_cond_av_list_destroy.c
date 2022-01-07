
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_av_list {struct cond_av_list* next; } ;


 int kfree (struct cond_av_list*) ;

__attribute__((used)) static void cond_av_list_destroy(struct cond_av_list *list)
{
 struct cond_av_list *cur, *next;
 for (cur = list; cur; cur = next) {
  next = cur->next;

  kfree(cur);
 }
}
