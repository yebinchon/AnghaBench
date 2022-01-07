
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fw_unit {int directory; } ;
struct fw_csr_iterator {int dummy; } ;


 int CSR_OFFSET ;
 scalar_t__ CSR_REGISTER_BASE ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int ) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;

__attribute__((used)) static u64 get_unit_base(struct fw_unit *unit)
{
 struct fw_csr_iterator i;
 int key, value;

 fw_csr_iterator_init(&i, unit->directory);
 while (fw_csr_iterator_next(&i, &key, &value))
  if (key == CSR_OFFSET)
   return CSR_REGISTER_BASE + value * 4;
 return 0;
}
