
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int __GFP_NOWARN ;
 char* kmalloc (int,int) ;
 int next_entry (char*,void*,int) ;

__attribute__((used)) static int str_read(char **strp, gfp_t flags, void *fp, u32 len)
{
 int rc;
 char *str;

 if ((len == 0) || (len == (u32)-1))
  return -EINVAL;

 str = kmalloc(len + 1, flags | __GFP_NOWARN);
 if (!str)
  return -ENOMEM;


 *strp = str;

 rc = next_entry(str, fp, len);
 if (rc)
  return rc;

 str[len] = '\0';
 return 0;
}
