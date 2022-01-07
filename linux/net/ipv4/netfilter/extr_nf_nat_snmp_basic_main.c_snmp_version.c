
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOTSUPP ;

int snmp_version(void *context, size_t hdrlen, unsigned char tag,
   const void *data, size_t datalen)
{
 if (datalen != 1)
  return -EINVAL;
 if (*(unsigned char *)data > 1)
  return -ENOTSUPP;
 return 1;
}
