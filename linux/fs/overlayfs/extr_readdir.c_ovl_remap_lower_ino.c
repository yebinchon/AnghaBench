
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pr_warn_ratelimited (char*,int,char const*,int,int) ;

__attribute__((used)) static u64 ovl_remap_lower_ino(u64 ino, int xinobits, int fsid,
          const char *name, int namelen)
{
 if (ino >> (64 - xinobits)) {
  pr_warn_ratelimited("overlayfs: d_ino too big (%.*s, ino=%llu, xinobits=%d)\n",
        namelen, name, ino, xinobits);
  return ino;
 }

 return ino | ((u64)fsid) << (64 - xinobits);
}
