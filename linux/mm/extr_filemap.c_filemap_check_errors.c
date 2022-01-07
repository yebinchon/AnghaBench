
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int flags; } ;


 int AS_EIO ;
 int AS_ENOSPC ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int filemap_check_errors(struct address_space *mapping)
{
 int ret = 0;

 if (test_bit(AS_ENOSPC, &mapping->flags) &&
     test_and_clear_bit(AS_ENOSPC, &mapping->flags))
  ret = -ENOSPC;
 if (test_bit(AS_EIO, &mapping->flags) &&
     test_and_clear_bit(AS_EIO, &mapping->flags))
  ret = -EIO;
 return ret;
}
