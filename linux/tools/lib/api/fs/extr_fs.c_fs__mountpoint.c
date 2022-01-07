
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {scalar_t__ path; scalar_t__ found; } ;


 struct fs* fs__entries ;
 char const* fs__get_mountpoint (struct fs*) ;

__attribute__((used)) static const char *fs__mountpoint(int idx)
{
 struct fs *fs = &fs__entries[idx];

 if (fs->found)
  return (const char *)fs->path;

 return fs__get_mountpoint(fs);
}
