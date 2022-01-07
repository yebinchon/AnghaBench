
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct sock {int sk_rcvbuf; int sk_sndbuf; } ;
struct hvsock {struct vsock_sock* vsk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RINGBUFFER_HVS_RCV_SIZE ;
 int RINGBUFFER_HVS_SND_SIZE ;
 struct hvsock* kzalloc (int,int ) ;
 struct sock* sk_vsock (struct vsock_sock*) ;

__attribute__((used)) static int hvs_sock_init(struct vsock_sock *vsk, struct vsock_sock *psk)
{
 struct hvsock *hvs;
 struct sock *sk = sk_vsock(vsk);

 hvs = kzalloc(sizeof(*hvs), GFP_KERNEL);
 if (!hvs)
  return -ENOMEM;

 vsk->trans = hvs;
 hvs->vsk = vsk;
 sk->sk_sndbuf = RINGBUFFER_HVS_SND_SIZE;
 sk->sk_rcvbuf = RINGBUFFER_HVS_RCV_SIZE;
 return 0;
}
