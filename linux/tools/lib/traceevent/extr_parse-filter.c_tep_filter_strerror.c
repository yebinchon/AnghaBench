
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event_filter {char* error_buffer; int tep; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int __TEP_ERRNO__END ;
 int __TEP_ERRNO__START ;
 size_t snprintf (char*,size_t,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int tep_strerror (int ,int,char*,size_t) ;

int tep_filter_strerror(struct tep_event_filter *filter, enum tep_errno err,
   char *buf, size_t buflen)
{
 if (err <= __TEP_ERRNO__START || err >= __TEP_ERRNO__END)
  return -1;

 if (strlen(filter->error_buffer) > 0) {
  size_t len = snprintf(buf, buflen, "%s", filter->error_buffer);

  if (len > buflen)
   return -1;
  return 0;
 }

 return tep_strerror(filter->tep, err, buf, buflen);
}
