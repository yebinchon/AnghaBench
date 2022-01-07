
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 int number_cred_unused ;
 int sysctl_vfs_cache_pressure ;

__attribute__((used)) static unsigned long
rpcauth_cache_shrink_count(struct shrinker *shrink, struct shrink_control *sc)

{
 return number_cred_unused * sysctl_vfs_cache_pressure / 100;
}
