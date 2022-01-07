
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket_info {int xsk; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EBUSY ;
 scalar_t__ ENOBUFS ;
 int MSG_DONTWAIT ;
 scalar_t__ errno ;
 int exit_with_error (scalar_t__) ;
 int sendto (int ,int *,int ,int ,int *,int ) ;
 int xsk_socket__fd (int ) ;

__attribute__((used)) static void kick_tx(struct xsk_socket_info *xsk)
{
 int ret;

 ret = sendto(xsk_socket__fd(xsk->xsk), ((void*)0), 0, MSG_DONTWAIT, ((void*)0), 0);
 if (ret >= 0 || errno == ENOBUFS || errno == EAGAIN || errno == EBUSY)
  return;
 exit_with_error(errno);
}
