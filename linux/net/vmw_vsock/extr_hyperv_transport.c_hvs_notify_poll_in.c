
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct hvsock {int chan; } ;


 int hvs_channel_readable (int ) ;

__attribute__((used)) static
int hvs_notify_poll_in(struct vsock_sock *vsk, size_t target, bool *readable)
{
 struct hvsock *hvs = vsk->trans;

 *readable = hvs_channel_readable(hvs->chan);
 return 0;
}
