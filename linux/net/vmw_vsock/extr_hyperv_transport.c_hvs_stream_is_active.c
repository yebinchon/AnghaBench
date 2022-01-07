
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct hvsock {int * chan; } ;



__attribute__((used)) static bool hvs_stream_is_active(struct vsock_sock *vsk)
{
 struct hvsock *hvs = vsk->trans;

 return hvs->chan != ((void*)0);
}
