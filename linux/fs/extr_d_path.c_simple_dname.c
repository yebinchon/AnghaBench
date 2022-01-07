
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENAMETOOLONG ;
 char* ERR_PTR (int ) ;
 scalar_t__ prepend (char**,int*,char*,int) ;

char *simple_dname(struct dentry *dentry, char *buffer, int buflen)
{
 char *end = buffer + buflen;

 if (prepend(&end, &buflen, " (deleted)", 11) ||
     prepend(&end, &buflen, dentry->d_name.name, dentry->d_name.len) ||
     prepend(&end, &buflen, "/", 1))
  end = ERR_PTR(-ENAMETOOLONG);
 return end;
}
