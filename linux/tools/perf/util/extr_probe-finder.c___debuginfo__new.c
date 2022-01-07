
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {int dummy; } ;


 scalar_t__ debuginfo__init_offline_dwarf (struct debuginfo*,char const*) ;
 int pr_debug (char*,char const*) ;
 struct debuginfo* zalloc (int) ;
 int zfree (struct debuginfo**) ;

__attribute__((used)) static struct debuginfo *__debuginfo__new(const char *path)
{
 struct debuginfo *dbg = zalloc(sizeof(*dbg));
 if (!dbg)
  return ((void*)0);

 if (debuginfo__init_offline_dwarf(dbg, path) < 0)
  zfree(&dbg);
 if (dbg)
  pr_debug("Open Debuginfo file: %s\n", path);
 return dbg;
}
