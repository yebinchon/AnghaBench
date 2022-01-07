
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;


 scalar_t__ HVS_MTU_SIZE ;

__attribute__((used)) static u64 hvs_stream_rcvhiwat(struct vsock_sock *vsk)
{
 return HVS_MTU_SIZE + 1;
}
