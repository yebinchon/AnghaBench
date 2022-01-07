
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int flags; } ;


 int AS_EIO ;
 int AS_ENOSPC ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int filemap_check_and_keep_errors(struct address_space *mapping)
{

 if (test_bit(AS_EIO, &mapping->flags))
  return -EIO;
 if (test_bit(AS_ENOSPC, &mapping->flags))
  return -ENOSPC;
 return 0;
}
