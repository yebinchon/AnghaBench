
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int sscanf (char const*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static inline int valid_ipaddr4(const char *buf)
{
 int rc, count, in[4];

 rc = sscanf(buf, "%d.%d.%d.%d", &in[0], &in[1], &in[2], &in[3]);
 if (rc != 4)
  return -EINVAL;
 for (count = 0; count < 4; count++) {
  if (in[count] > 255)
   return -EINVAL;
 }
 return 0;
}
