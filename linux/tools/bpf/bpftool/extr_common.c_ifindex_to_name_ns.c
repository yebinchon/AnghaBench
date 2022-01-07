
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef scalar_t__ __u32 ;


 int errno ;
 char* if_indextoname (scalar_t__,char*) ;
 int p_err (char*,int ) ;
 int stat (char*,struct stat*) ;
 int strerror (int ) ;

__attribute__((used)) static char *
ifindex_to_name_ns(__u32 ifindex, __u32 ns_dev, __u32 ns_ino, char *buf)
{
 struct stat st;
 int err;

 err = stat("/proc/self/ns/net", &st);
 if (err) {
  p_err("Can't stat /proc/self: %s", strerror(errno));
  return ((void*)0);
 }

 if (st.st_dev != ns_dev || st.st_ino != ns_ino)
  return ((void*)0);

 return if_indextoname(ifindex, buf);
}
