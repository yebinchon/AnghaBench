
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,int,int) ;
 int strerror_r (int,char*,int) ;

char *libbpf_strerror_r(int err, char *dst, int len)
{
 int ret = strerror_r(err < 0 ? -err : err, dst, len);
 if (ret)
  snprintf(dst, len, "ERROR: strerror_r(%d)=%d", err, ret);
 return dst;
}
