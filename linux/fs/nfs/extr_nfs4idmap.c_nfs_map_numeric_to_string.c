
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int nfs_map_numeric_to_string(__u32 id, char *buf, size_t buflen)
{
 return snprintf(buf, buflen, "%u", id);
}
