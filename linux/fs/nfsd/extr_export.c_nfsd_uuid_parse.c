
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int EX_UUID_LEN ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 unsigned char* kmemdup (char*,int,int ) ;
 int qword_get (char**,char*,int ) ;

__attribute__((used)) static inline int
nfsd_uuid_parse(char **mesg, char *buf, unsigned char **puuid)
{
 int len;


 if (*puuid)
  return -EINVAL;


 len = qword_get(mesg, buf, PAGE_SIZE);
 if (len != EX_UUID_LEN)
  return -EINVAL;

 *puuid = kmemdup(buf, EX_UUID_LEN, GFP_KERNEL);
 if (*puuid == ((void*)0))
  return -ENOMEM;

 return 0;
}
