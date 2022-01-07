
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_loader_strerror (int,char*,size_t) ;
 size_t snprintf (char*,size_t,char*,char const*,char*) ;

int bpf__strerror_prepare_load(const char *filename, bool source,
          int err, char *buf, size_t size)
{
 size_t n;
 int ret;

 n = snprintf(buf, size, "Failed to load %s%s: ",
    filename, source ? " from source" : "");
 if (n >= size) {
  buf[size - 1] = '\0';
  return 0;
 }
 buf += n;
 size -= n;

 ret = bpf_loader_strerror(err, buf, size);
 buf[size - 1] = '\0';
 return ret;
}
