
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_request_info {int dummy; } ;
struct iw_event {char u; int len; } ;


 scalar_t__ IW_EV_LCP_LEN ;
 int iwe_stream_lcp_len (struct iw_request_info*) ;
 scalar_t__ likely (int) ;
 int memcpy (char*,char*,int) ;

char *iwe_stream_add_value(struct iw_request_info *info, char *event,
      char *value, char *ends, struct iw_event *iwe,
      int event_len)
{
 int lcp_len = iwe_stream_lcp_len(info);


 event_len -= IW_EV_LCP_LEN;


 if (likely((value + event_len) < ends)) {

  memcpy(value, &iwe->u, event_len);
  value += event_len;

  iwe->len = value - event;
  memcpy(event, (char *) iwe, lcp_len);
 }

 return value;
}
