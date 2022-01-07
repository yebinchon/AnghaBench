
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sctp_subtype {size_t other; } ;


 size_t SCTP_EVENT_OTHER_MAX ;
 char const** sctp_other_tbl ;

const char *sctp_oname(const union sctp_subtype id)
{
 if (id.other <= SCTP_EVENT_OTHER_MAX)
  return sctp_other_tbl[id.other];
 return "unknown 'other' event";
}
