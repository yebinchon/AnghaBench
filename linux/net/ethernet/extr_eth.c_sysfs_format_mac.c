
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int,unsigned char const*) ;

ssize_t sysfs_format_mac(char *buf, const unsigned char *addr, int len)
{
 return scnprintf(buf, PAGE_SIZE, "%*phC\n", len, addr);
}
