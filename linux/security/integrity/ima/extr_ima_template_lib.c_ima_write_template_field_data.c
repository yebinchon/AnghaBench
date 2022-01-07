
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct ima_field_data {char* data; int len; } ;
typedef enum data_formats { ____Placeholder_data_formats } data_formats ;


 int DATA_FMT_STRING ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,void const*,int const) ;

__attribute__((used)) static int ima_write_template_field_data(const void *data, const u32 datalen,
      enum data_formats datafmt,
      struct ima_field_data *field_data)
{
 u8 *buf, *buf_ptr;
 u32 buflen = datalen;

 if (datafmt == DATA_FMT_STRING)
  buflen = datalen + 1;

 buf = kzalloc(buflen, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 memcpy(buf, data, datalen);
 if (datafmt == DATA_FMT_STRING) {
  for (buf_ptr = buf; buf_ptr - buf < datalen; buf_ptr++)
   if (*buf_ptr == ' ')
    *buf_ptr = '_';
 }

 field_data->data = buf;
 field_data->len = buflen;
 return 0;
}
