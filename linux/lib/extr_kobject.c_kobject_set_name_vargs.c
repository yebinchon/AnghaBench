
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct kobject {char const* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree_const (char const*) ;
 char* kstrdup (char const*,int ) ;
 char* kvasprintf_const (int ,char const*,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int strreplace (char*,char,char) ;

int kobject_set_name_vargs(struct kobject *kobj, const char *fmt,
      va_list vargs)
{
 const char *s;

 if (kobj->name && !fmt)
  return 0;

 s = kvasprintf_const(GFP_KERNEL, fmt, vargs);
 if (!s)
  return -ENOMEM;







 if (strchr(s, '/')) {
  char *t;

  t = kstrdup(s, GFP_KERNEL);
  kfree_const(s);
  if (!t)
   return -ENOMEM;
  strreplace(t, '/', '!');
  s = t;
 }
 kfree_const(kobj->name);
 kobj->name = s;

 return 0;
}
