
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smack_known {int smk_known; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup (int ,int ) ;
 struct smack_known* smk_of_task_struct (struct task_struct*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int smack_getprocattr(struct task_struct *p, char *name, char **value)
{
 struct smack_known *skp = smk_of_task_struct(p);
 char *cp;
 int slen;

 if (strcmp(name, "current") != 0)
  return -EINVAL;

 cp = kstrdup(skp->smk_known, GFP_KERNEL);
 if (cp == ((void*)0))
  return -ENOMEM;

 slen = strlen(cp);
 *value = cp;
 return slen;
}
