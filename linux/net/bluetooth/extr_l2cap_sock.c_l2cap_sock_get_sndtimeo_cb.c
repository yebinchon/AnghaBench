
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {long sk_sndtimeo; } ;
struct l2cap_chan {struct sock* data; } ;



__attribute__((used)) static long l2cap_sock_get_sndtimeo_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;

 return sk->sk_sndtimeo;
}
