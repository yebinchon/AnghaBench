
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; int end; } ;
union sctp_sack_variable {TYPE_1__ gab; } ;
struct sctp_sackhdr {int num_gap_ack_blocks; union sctp_sack_variable* variable; } ;
struct sctp_association {int next_tsn; int ctsn_ack_point; int unack_data; } ;
typedef int __u16 ;


 int ntohs (int ) ;

__attribute__((used)) static void sctp_sack_update_unack_data(struct sctp_association *assoc,
     struct sctp_sackhdr *sack)
{
 union sctp_sack_variable *frags;
 __u16 unack_data;
 int i;

 unack_data = assoc->next_tsn - assoc->ctsn_ack_point - 1;

 frags = sack->variable;
 for (i = 0; i < ntohs(sack->num_gap_ack_blocks); i++) {
  unack_data -= ((ntohs(frags[i].gab.end) -
    ntohs(frags[i].gab.start) + 1));
 }

 assoc->unack_data = unack_data;
}
