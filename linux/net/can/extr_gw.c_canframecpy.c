
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct canfd_frame {scalar_t__ data; int len; int can_id; } ;
struct can_frame {scalar_t__ data; int can_dlc; int can_id; } ;



__attribute__((used)) static void canframecpy(struct canfd_frame *dst, struct can_frame *src)
{





 dst->can_id = src->can_id;
 dst->len = src->can_dlc;
 *(u64 *)dst->data = *(u64 *)src->data;
}
