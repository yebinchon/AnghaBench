
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct shortname_info {scalar_t__ upper; scalar_t__ lower; scalar_t__ valid; } ;
struct nls_table {int (* uni2char ) (int ,unsigned char*,int) ;} ;


 scalar_t__ isalpha (unsigned char) ;
 unsigned char nls_toupper (struct nls_table*,unsigned char) ;
 int stub1 (int ,unsigned char*,int) ;
 scalar_t__ vfat_replace_char (int ) ;
 scalar_t__ vfat_skip_char (int ) ;

__attribute__((used)) static inline int to_shortname_char(struct nls_table *nls,
        unsigned char *buf, int buf_size,
        wchar_t *src, struct shortname_info *info)
{
 int len;

 if (vfat_skip_char(*src)) {
  info->valid = 0;
  return 0;
 }
 if (vfat_replace_char(*src)) {
  info->valid = 0;
  buf[0] = '_';
  return 1;
 }

 len = nls->uni2char(*src, buf, buf_size);
 if (len <= 0) {
  info->valid = 0;
  buf[0] = '_';
  len = 1;
 } else if (len == 1) {
  unsigned char prev = buf[0];

  if (buf[0] >= 0x7F) {
   info->lower = 0;
   info->upper = 0;
  }

  buf[0] = nls_toupper(nls, buf[0]);
  if (isalpha(buf[0])) {
   if (buf[0] == prev)
    info->lower = 0;
   else
    info->upper = 0;
  }
 } else {
  info->lower = 0;
  info->upper = 0;
 }

 return len;
}
