
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E2BIG ;
 int EINVAL ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,char,size_t) ;
 int min (size_t,size_t) ;

__attribute__((used)) static int copy_sysctl_value(char *dst, size_t dst_len, char *src,
        size_t src_len)
{
 if (!dst)
  return -EINVAL;

 if (!dst_len)
  return -E2BIG;

 if (!src || !src_len) {
  memset(dst, 0, dst_len);
  return -EINVAL;
 }

 memcpy(dst, src, min(dst_len, src_len));

 if (dst_len > src_len) {
  memset(dst + src_len, '\0', dst_len - src_len);
  return src_len;
 }

 dst[dst_len - 1] = '\0';

 return -E2BIG;
}
