
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sctp_subtype {size_t primitive; } ;


 size_t SCTP_EVENT_PRIMITIVE_MAX ;
 char const** sctp_primitive_tbl ;

const char *sctp_pname(const union sctp_subtype id)
{
 if (id.primitive <= SCTP_EVENT_PRIMITIVE_MAX)
  return sctp_primitive_tbl[id.primitive];
 return "unknown_primitive";
}
