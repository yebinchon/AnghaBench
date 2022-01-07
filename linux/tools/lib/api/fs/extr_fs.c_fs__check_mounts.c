
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {char** mounts; int found; int path; int magic; } ;


 scalar_t__ fs__valid_mount (char const* const,int ) ;
 int strcpy (int ,char const* const) ;

__attribute__((used)) static bool fs__check_mounts(struct fs *fs)
{
 const char * const *ptr;

 ptr = fs->mounts;
 while (*ptr) {
  if (fs__valid_mount(*ptr, fs->magic) == 0) {
   fs->found = 1;
   strcpy(fs->path, *ptr);
   return 1;
  }
  ptr++;
 }

 return 0;
}
