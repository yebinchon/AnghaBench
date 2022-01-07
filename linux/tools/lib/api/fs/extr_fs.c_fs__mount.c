
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {char const* path; int name; } ;


 scalar_t__ fs__check_mounts (struct fs*) ;
 struct fs* fs__entries ;
 scalar_t__ fs__mountpoint (int) ;
 scalar_t__ mount (int *,char const*,int ,int ,int *) ;
 char* mount_overload (struct fs*) ;

__attribute__((used)) static const char *fs__mount(int idx)
{
 struct fs *fs = &fs__entries[idx];
 const char *mountpoint;

 if (fs__mountpoint(idx))
  return (const char *)fs->path;

 mountpoint = mount_overload(fs);

 if (mount(((void*)0), mountpoint, fs->name, 0, ((void*)0)) < 0)
  return ((void*)0);

 return fs__check_mounts(fs) ? fs->path : ((void*)0);
}
