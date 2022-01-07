
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpq {int reasm; } ;
typedef int __u16 ;


 int sctp_ulpq_renege_list (struct sctp_ulpq*,int *,int ) ;

__attribute__((used)) static __u16 sctp_ulpq_renege_frags(struct sctp_ulpq *ulpq, __u16 needed)
{
 return sctp_ulpq_renege_list(ulpq, &ulpq->reasm, needed);
}
