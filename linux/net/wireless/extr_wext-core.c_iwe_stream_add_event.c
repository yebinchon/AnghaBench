
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_request_info {int dummy; } ;
struct iw_event {int len; char u; } ;


 int IW_EV_LCP_PK_LEN ;
 int iwe_stream_event_len_adjust (struct iw_request_info*,int) ;
 int iwe_stream_lcp_len (struct iw_request_info*) ;
 scalar_t__ likely (int) ;
 int memcpy (char*,char*,int) ;

char *iwe_stream_add_event(struct iw_request_info *info, char *stream,
      char *ends, struct iw_event *iwe, int event_len)
{
 int lcp_len = iwe_stream_lcp_len(info);

 event_len = iwe_stream_event_len_adjust(info, event_len);


 if (likely((stream + event_len) < ends)) {
  iwe->len = event_len;

  memcpy(stream, (char *) iwe, IW_EV_LCP_PK_LEN);
  memcpy(stream + lcp_len, &iwe->u,
         event_len - lcp_len);
  stream += event_len;
 }

 return stream;
}
