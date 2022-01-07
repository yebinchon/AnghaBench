
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_vsock {int guest_cid; } ;


 int VMADDR_CID_ANY ;
 struct virtio_vsock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int the_virtio_vsock ;

__attribute__((used)) static u32 virtio_transport_get_local_cid(void)
{
 struct virtio_vsock *vsock;
 u32 ret;

 rcu_read_lock();
 vsock = rcu_dereference(the_virtio_vsock);
 if (!vsock) {
  ret = VMADDR_CID_ANY;
  goto out_rcu;
 }

 ret = vsock->guest_cid;
out_rcu:
 rcu_read_unlock();
 return ret;
}
