
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_da_args {int flags; int valuelen; int op_flags; int value; scalar_t__ rmtblkno; } ;


 int ATTR_KERNOVAL ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int XFS_DA_OP_ALLOCVAL ;
 int kmem_alloc_large (int,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int xfs_attr_rmtval_get (struct xfs_da_args*) ;

__attribute__((used)) static int
xfs_attr_copy_value(
 struct xfs_da_args *args,
 unsigned char *value,
 int valuelen)
{



 if (args->flags & ATTR_KERNOVAL) {
  args->valuelen = valuelen;
  return 0;
 }




 if (args->valuelen < valuelen) {
  args->valuelen = valuelen;
  return -ERANGE;
 }

 if (args->op_flags & XFS_DA_OP_ALLOCVAL) {
  args->value = kmem_alloc_large(valuelen, 0);
  if (!args->value)
   return -ENOMEM;
 }
 args->valuelen = valuelen;


 if (args->rmtblkno)
  return xfs_attr_rmtval_get(args);







 if (!value)
  return -EINVAL;
 memcpy(args->value, value, valuelen);
 return 0;
}
