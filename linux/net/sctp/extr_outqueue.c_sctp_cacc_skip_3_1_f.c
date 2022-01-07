
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cacc_saw_newack; } ;
struct sctp_transport {TYPE_1__ cacc; } ;



__attribute__((used)) static inline int sctp_cacc_skip_3_1_f(struct sctp_transport *transport,
           int count_of_newacks)
{
 if (count_of_newacks < 2 &&
   (transport && !transport->cacc.cacc_saw_newack))
  return 1;
 return 0;
}
