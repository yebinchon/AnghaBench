
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*) ;

__attribute__((used)) static inline bool may_mandlock(void)
{
 pr_warn("VFS: \"mand\" mount option not supported");
 return 0;
}
