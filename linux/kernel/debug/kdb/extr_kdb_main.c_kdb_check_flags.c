
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kdb_cmdflags_t ;


 int KDB_ENABLE_ALL ;
 int KDB_ENABLE_ALWAYS_SAFE ;
 int KDB_ENABLE_MASK ;
 int KDB_ENABLE_NO_ARGS_SHIFT ;

__attribute__((used)) static inline bool kdb_check_flags(kdb_cmdflags_t flags, int permissions,
       bool no_args)
{

 permissions &= KDB_ENABLE_MASK;
 permissions |= KDB_ENABLE_ALWAYS_SAFE;


 if (no_args)
  permissions |= permissions << KDB_ENABLE_NO_ARGS_SHIFT;

 flags |= KDB_ENABLE_ALL;

 return permissions & flags;
}
