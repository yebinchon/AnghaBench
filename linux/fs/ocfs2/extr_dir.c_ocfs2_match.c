
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_entry {int name_len; int name; int inode; } ;


 int memcmp (char const* const,int ,int) ;

__attribute__((used)) static inline int ocfs2_match(int len,
         const char * const name,
         struct ocfs2_dir_entry *de)
{
 if (len != de->name_len)
  return 0;
 if (!de->inode)
  return 0;
 return !memcmp(name, de->name, len);
}
