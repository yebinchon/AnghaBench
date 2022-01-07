
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inode; } ;
struct TYPE_3__ {int offset; int ptr; } ;
union futex_key {TYPE_2__ shared; TYPE_1__ both; } ;


 int CONFIG_MMU ;


 int IS_ENABLED (int ) ;
 int futex_get_mm (union futex_key*) ;
 int ihold (int ) ;
 int smp_mb () ;

__attribute__((used)) static void get_futex_key_refs(union futex_key *key)
{
 if (!key->both.ptr)
  return;






 if (!IS_ENABLED(CONFIG_MMU)) {
  smp_mb();
  return;
 }

 switch (key->both.offset & (129|128)) {
 case 129:
  ihold(key->shared.inode);
  break;
 case 128:
  futex_get_mm(key);
  break;
 default:





  smp_mb();
 }
}
