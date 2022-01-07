
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
typedef int buf ;


 int kstrtouint (char*,int,int*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static bool
numeric_name_to_id(struct svc_rqst *rqstp, int type, const char *name, u32 namelen, u32 *id)
{
 int ret;
 char buf[11];

 if (namelen + 1 > sizeof(buf))

  return 0;

 memcpy(buf, name, namelen);
 buf[namelen] = '\0';
 ret = kstrtouint(buf, 10, id);
 return ret == 0;
}
