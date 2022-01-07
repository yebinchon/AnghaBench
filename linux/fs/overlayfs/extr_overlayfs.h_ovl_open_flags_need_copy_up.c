
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FMODE_WRITE ;
 int OPEN_FMODE (int) ;
 int O_TRUNC ;

__attribute__((used)) static inline bool ovl_open_flags_need_copy_up(int flags)
{
 if (!flags)
  return 0;

 return ((OPEN_FMODE(flags) & FMODE_WRITE) || (flags & O_TRUNC));
}
