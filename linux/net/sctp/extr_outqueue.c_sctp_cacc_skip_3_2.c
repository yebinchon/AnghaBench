
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_tsn_at_change; scalar_t__ cycling_changeover; } ;
struct sctp_transport {TYPE_1__ cacc; } ;
typedef int __u32 ;


 scalar_t__ TSN_lt (int ,int ) ;

__attribute__((used)) static inline int sctp_cacc_skip_3_2(struct sctp_transport *primary, __u32 tsn)
{
 if (primary->cacc.cycling_changeover &&
     TSN_lt(tsn, primary->cacc.next_tsn_at_change))
  return 1;
 return 0;
}
