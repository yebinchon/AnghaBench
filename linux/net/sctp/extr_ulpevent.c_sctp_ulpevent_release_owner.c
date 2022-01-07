
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int rmem_len; struct sctp_association* asoc; } ;
struct sctp_association {int rmem_alloc; } ;


 int atomic_sub (int ,int *) ;
 int sctp_association_put (struct sctp_association*) ;

__attribute__((used)) static inline void sctp_ulpevent_release_owner(struct sctp_ulpevent *event)
{
 struct sctp_association *asoc = event->asoc;

 atomic_sub(event->rmem_len, &asoc->rmem_alloc);
 sctp_association_put(asoc);
}
