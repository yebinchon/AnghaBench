
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {scalar_t__ in_flight; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline void dec_in_flight_req(struct virtio_fs_vq *fsvq)
{
 WARN_ON(fsvq->in_flight <= 0);
 fsvq->in_flight--;
}
