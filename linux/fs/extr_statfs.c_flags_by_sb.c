
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SB_MANDLOCK ;
 int SB_RDONLY ;
 int SB_SYNCHRONOUS ;
 int ST_MANDLOCK ;
 int ST_RDONLY ;
 int ST_SYNCHRONOUS ;

__attribute__((used)) static int flags_by_sb(int s_flags)
{
 int flags = 0;
 if (s_flags & SB_SYNCHRONOUS)
  flags |= ST_SYNCHRONOUS;
 if (s_flags & SB_MANDLOCK)
  flags |= ST_MANDLOCK;
 if (s_flags & SB_RDONLY)
  flags |= ST_RDONLY;
 return flags;
}
