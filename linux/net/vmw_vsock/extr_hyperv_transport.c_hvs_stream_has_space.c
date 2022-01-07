
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct hvsock {int chan; } ;
typedef int s64 ;


 int hvs_channel_writable_bytes (int ) ;

__attribute__((used)) static s64 hvs_stream_has_space(struct vsock_sock *vsk)
{
 struct hvsock *hvs = vsk->trans;

 return hvs_channel_writable_bytes(hvs->chan);
}
