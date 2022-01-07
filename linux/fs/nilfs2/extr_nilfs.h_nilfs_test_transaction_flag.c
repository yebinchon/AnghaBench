
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_transaction_info {scalar_t__ ti_magic; unsigned int ti_flags; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 scalar_t__ NILFS_TI_MAGIC ;
 TYPE_1__* current ;

__attribute__((used)) static inline int nilfs_test_transaction_flag(unsigned int flag)
{
 struct nilfs_transaction_info *ti = current->journal_info;

 if (ti == ((void*)0) || ti->ti_magic != NILFS_TI_MAGIC)
  return 0;
 return !!(ti->ti_flags & flag);
}
