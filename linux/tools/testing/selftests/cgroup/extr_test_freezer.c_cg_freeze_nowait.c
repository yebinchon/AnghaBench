
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cg_write (char const*,char*,char*) ;

__attribute__((used)) static int cg_freeze_nowait(const char *cgroup, bool freeze)
{
 return cg_write(cgroup, "cgroup.freeze", freeze ? "1" : "0");
}
