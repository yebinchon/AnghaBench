
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ONCE (int,char*,char*,char*,char*,char*,char*,char*,unsigned long,unsigned long) ;

void usercopy_warn(const char *name, const char *detail, bool to_user,
     unsigned long offset, unsigned long len)
{
 WARN_ONCE(1, "Bad or missing usercopy whitelist? Kernel memory %s attempt detected %s %s%s%s%s (offset %lu, size %lu)!\n",
   to_user ? "exposure" : "overwrite",
   to_user ? "from" : "to",
   name ? : "unknown?!",
   detail ? " '" : "", detail ? : "", detail ? "'" : "",
   offset, len);
}
