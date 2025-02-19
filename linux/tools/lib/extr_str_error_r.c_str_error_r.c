
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int,size_t,int) ;
 int strerror_r (int,char*,size_t) ;

char *str_error_r(int errnum, char *buf, size_t buflen)
{
 int err = strerror_r(errnum, buf, buflen);
 if (err)
  snprintf(buf, buflen, "INTERNAL ERROR: strerror_r(%d, [buf], %zd)=%d", errnum, buflen, err);
 return buf;
}
