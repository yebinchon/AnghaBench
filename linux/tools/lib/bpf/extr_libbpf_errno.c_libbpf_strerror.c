
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ERRNO_OFFSET (int) ;
 int __LIBBPF_ERRNO__END ;
 int __LIBBPF_ERRNO__START ;
 char** libbpf_strerror_table ;
 int snprintf (char*,size_t,char*,...) ;
 int strerror_r (int,char*,size_t) ;

int libbpf_strerror(int err, char *buf, size_t size)
{
 if (!buf || !size)
  return -1;

 err = err > 0 ? err : -err;

 if (err < __LIBBPF_ERRNO__START) {
  int ret;

  ret = strerror_r(err, buf, size);
  buf[size - 1] = '\0';
  return ret;
 }

 if (err < __LIBBPF_ERRNO__END) {
  const char *msg;

  msg = libbpf_strerror_table[ERRNO_OFFSET(err)];
  snprintf(buf, size, "%s", msg);
  buf[size - 1] = '\0';
  return 0;
 }

 snprintf(buf, size, "Unknown libbpf error %d", err);
 buf[size - 1] = '\0';
 return -1;
}
