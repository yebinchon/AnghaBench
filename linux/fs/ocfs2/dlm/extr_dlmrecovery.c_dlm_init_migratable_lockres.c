
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u64 ;
struct dlm_migratable_lockres {int lockname_len; void* master; void* flags; int mig_cookie; int total_locks; scalar_t__ num_locks; int lockname; } ;


 int clear_page (struct dlm_migratable_lockres*) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,char const*,int) ;

__attribute__((used)) static void dlm_init_migratable_lockres(struct dlm_migratable_lockres *mres,
     const char *lockname, int namelen,
     int total_locks, u64 cookie,
     u8 flags, u8 master)
{

 clear_page(mres);
 mres->lockname_len = namelen;
 memcpy(mres->lockname, lockname, namelen);
 mres->num_locks = 0;
 mres->total_locks = cpu_to_be32(total_locks);
 mres->mig_cookie = cpu_to_be64(cookie);
 mres->flags = flags;
 mres->master = master;
}
