
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sctp_subtype {scalar_t__ timeout; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ SCTP_EVENT_TIMEOUT_MAX ;
 char const** sctp_timer_tbl ;

const char *sctp_tname(const union sctp_subtype id)
{
 BUILD_BUG_ON(SCTP_EVENT_TIMEOUT_MAX + 1 != ARRAY_SIZE(sctp_timer_tbl));

 if (id.timeout < ARRAY_SIZE(sctp_timer_tbl))
  return sctp_timer_tbl[id.timeout];
 return "unknown_timer";
}
