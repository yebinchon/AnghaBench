
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static inline int
__bpf_strerror(char *buf, size_t size)
{
 if (!size)
  return 0;
 strncpy(buf,
  "ERROR: eBPF object loading is disabled during compiling.\n",
  size);
 buf[size - 1] = '\0';
 return 0;
}
