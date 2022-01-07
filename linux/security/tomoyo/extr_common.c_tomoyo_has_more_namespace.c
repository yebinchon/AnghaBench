
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ns; scalar_t__ eof; } ;
struct tomoyo_io_buffer {scalar_t__ type; TYPE_2__ r; } ;
struct TYPE_3__ {int * next; } ;


 scalar_t__ TOMOYO_EXCEPTIONPOLICY ;
 scalar_t__ TOMOYO_PROFILE ;
 int tomoyo_namespace_list ;

__attribute__((used)) static inline bool tomoyo_has_more_namespace(struct tomoyo_io_buffer *head)
{
 return (head->type == TOMOYO_EXCEPTIONPOLICY ||
  head->type == TOMOYO_PROFILE) && head->r.eof &&
  head->r.ns->next != &tomoyo_namespace_list;
}
