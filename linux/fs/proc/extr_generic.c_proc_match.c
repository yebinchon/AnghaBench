
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {unsigned int namelen; int name; } ;


 int memcmp (char const*,int ,unsigned int) ;

__attribute__((used)) static int proc_match(const char *name, struct proc_dir_entry *de, unsigned int len)
{
 if (len < de->namelen)
  return -1;
 if (len > de->namelen)
  return 1;

 return memcmp(name, de->name, len);
}
