
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;

__attribute__((used)) static inline int ocfs2_highest_compat_lock_level(int level)
{
 int new_level = DLM_LOCK_EX;

 if (level == DLM_LOCK_EX)
  new_level = DLM_LOCK_NL;
 else if (level == DLM_LOCK_PR)
  new_level = DLM_LOCK_PR;
 return new_level;
}
