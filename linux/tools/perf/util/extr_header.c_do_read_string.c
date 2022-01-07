
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct feat_fd {int dummy; } ;


 int __do_read (struct feat_fd*,char*,int ) ;
 scalar_t__ do_read_u32 (struct feat_fd*,int *) ;
 int free (char*) ;
 char* malloc (int ) ;

__attribute__((used)) static char *do_read_string(struct feat_fd *ff)
{
 u32 len;
 char *buf;

 if (do_read_u32(ff, &len))
  return ((void*)0);

 buf = malloc(len);
 if (!buf)
  return ((void*)0);

 if (!__do_read(ff, buf, len)) {





  return buf;
 }

 free(buf);
 return ((void*)0);
}
