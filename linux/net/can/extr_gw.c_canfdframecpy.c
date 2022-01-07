
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct canfd_frame {int data; int len; int flags; int can_id; } ;


 int CANFD_MAX_DLEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void canfdframecpy(struct canfd_frame *dst, struct canfd_frame *src)
{





 dst->can_id = src->can_id;
 dst->flags = src->flags;
 dst->len = src->len;
 memcpy(dst->data, src->data, CANFD_MAX_DLEN);
}
