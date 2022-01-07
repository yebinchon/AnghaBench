
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long CONFIG_LSM_MMAP_MIN_ADDR ;
 int MEMPROTECT__MMAP_ZERO ;
 int SECCLASS_MEMPROTECT ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_mmap_addr(unsigned long addr)
{
 int rc = 0;

 if (addr < CONFIG_LSM_MMAP_MIN_ADDR) {
  u32 sid = current_sid();
  rc = avc_has_perm(&selinux_state,
      sid, sid, SECCLASS_MEMPROTECT,
      MEMPROTECT__MMAP_ZERO, ((void*)0));
 }

 return rc;
}
