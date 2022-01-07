
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int ima_file_status; int atomic_flags; } ;
struct inode {int dummy; } ;


 int FILE_CHECK ;
 int IMA_UPDATE_XATTR ;
 int INTEGRITY_PASS ;
 int MAY_ACCESS ;
 int ima_must_appraise (struct inode*,int ,int ) ;
 struct integrity_iint_cache* integrity_inode_get (struct inode*) ;
 int set_bit (int ,int *) ;

void ima_post_create_tmpfile(struct inode *inode)
{
 struct integrity_iint_cache *iint;
 int must_appraise;

 must_appraise = ima_must_appraise(inode, MAY_ACCESS, FILE_CHECK);
 if (!must_appraise)
  return;


 iint = integrity_inode_get(inode);
 if (!iint)
  return;


 set_bit(IMA_UPDATE_XATTR, &iint->atomic_flags);
 iint->ima_file_status = INTEGRITY_PASS;
}
