
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int peer_shutdown; struct hvsock* trans; } ;
struct hvsock {scalar_t__ recv_data_len; int chan; } ;
typedef int s64 ;


 int SEND_SHUTDOWN ;
 int hvs_channel_readable_payload (int ) ;

__attribute__((used)) static s64 hvs_stream_has_data(struct vsock_sock *vsk)
{
 struct hvsock *hvs = vsk->trans;
 s64 ret;

 if (hvs->recv_data_len > 0)
  return 1;

 switch (hvs_channel_readable_payload(hvs->chan)) {
 case 1:
  ret = 1;
  break;
 case 0:
  vsk->peer_shutdown |= SEND_SHUTDOWN;
  ret = 0;
  break;
 default:
  ret = 0;
  break;
 }

 return ret;
}
