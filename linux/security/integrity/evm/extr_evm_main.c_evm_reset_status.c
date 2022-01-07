
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int evm_status; } ;
struct inode {int dummy; } ;


 int INTEGRITY_UNKNOWN ;
 struct integrity_iint_cache* integrity_iint_find (struct inode*) ;

__attribute__((used)) static void evm_reset_status(struct inode *inode)
{
 struct integrity_iint_cache *iint;

 iint = integrity_iint_find(inode);
 if (iint)
  iint->evm_status = INTEGRITY_UNKNOWN;
}
