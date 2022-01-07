
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {int in_flight; } ;



__attribute__((used)) static inline void inc_in_flight_req(struct virtio_fs_vq *fsvq)
{
 fsvq->in_flight++;
}
