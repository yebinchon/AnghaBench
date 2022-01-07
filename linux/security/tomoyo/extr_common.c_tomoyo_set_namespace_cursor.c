
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* ns; scalar_t__ eof; } ;
struct tomoyo_io_buffer {scalar_t__ type; TYPE_1__ r; } ;
struct list_head {struct list_head* next; } ;


 scalar_t__ TOMOYO_EXCEPTIONPOLICY ;
 scalar_t__ TOMOYO_PROFILE ;
 int memset (TYPE_1__*,int ,int) ;
 struct list_head tomoyo_namespace_list ;

__attribute__((used)) static inline void tomoyo_set_namespace_cursor(struct tomoyo_io_buffer *head)
{
 struct list_head *ns;

 if (head->type != TOMOYO_EXCEPTIONPOLICY &&
     head->type != TOMOYO_PROFILE)
  return;




 ns = head->r.ns;
 if (!ns || (head->r.eof && ns->next != &tomoyo_namespace_list)) {

  memset(&head->r, 0, sizeof(head->r));
  head->r.ns = ns ? ns->next : tomoyo_namespace_list.next;
 }
}
