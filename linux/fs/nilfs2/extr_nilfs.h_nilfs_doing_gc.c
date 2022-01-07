
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NILFS_TI_GC ;
 int nilfs_test_transaction_flag (int ) ;

__attribute__((used)) static inline int nilfs_doing_gc(void)
{
 return nilfs_test_transaction_flag(NILFS_TI_GC);
}
