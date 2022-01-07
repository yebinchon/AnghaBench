
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_OBJ_NAME_LEN ;
 int EINVAL ;
 int isalnum (char const) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int bpf_obj_name_cpy(char *dst, const char *src)
{
 const char *end = src + BPF_OBJ_NAME_LEN;

 memset(dst, 0, BPF_OBJ_NAME_LEN);

 while (src < end && *src) {
  if (!isalnum(*src) &&
      *src != '_' && *src != '.')
   return -EINVAL;
  *dst++ = *src++;
 }


 if (src == end)
  return -EINVAL;

 return 0;
}
