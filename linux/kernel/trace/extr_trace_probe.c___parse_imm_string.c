
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int GFP_KERNEL ;
 int IMMSTR_NO_CLOSE ;
 char* kstrndup (char*,size_t,int ) ;
 size_t strlen (char*) ;
 int trace_probe_log_err (int,int ) ;

__attribute__((used)) static int __parse_imm_string(char *str, char **pbuf, int offs)
{
 size_t len = strlen(str);

 if (str[len - 1] != '"') {
  trace_probe_log_err(offs + len, IMMSTR_NO_CLOSE);
  return -EINVAL;
 }
 *pbuf = kstrndup(str, len - 1, GFP_KERNEL);
 return 0;
}
