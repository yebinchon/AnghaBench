
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct msg_sender {TYPE_1__ list; } ;


 int list_del (TYPE_1__*) ;

__attribute__((used)) static inline void ss_del(struct msg_sender *mss)
{
 if (mss->list.next)
  list_del(&mss->list);
}
