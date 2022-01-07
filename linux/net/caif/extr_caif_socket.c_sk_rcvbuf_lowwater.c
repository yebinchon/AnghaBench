
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk_rcvbuf; } ;
struct caifsock {TYPE_1__ sk; } ;



__attribute__((used)) static int sk_rcvbuf_lowwater(struct caifsock *cf_sk)
{

 return cf_sk->sk.sk_rcvbuf / 4;
}
