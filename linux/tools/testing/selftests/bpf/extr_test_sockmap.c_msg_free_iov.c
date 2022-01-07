
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_2__ {struct TYPE_2__* iov_base; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void msg_free_iov(struct msghdr *msg)
{
 int i;

 for (i = 0; i < msg->msg_iovlen; i++)
  free(msg->msg_iov[i].iov_base);
 free(msg->msg_iov);
 msg->msg_iov = ((void*)0);
 msg->msg_iovlen = 0;
}
