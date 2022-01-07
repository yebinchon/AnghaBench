
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_security_struct {void* mntpoint_sid; int def_sid; void* sid; struct super_block* sb; int isec_lock; int isec_head; int lock; } ;
struct super_block {struct superblock_security_struct* s_security; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SECINITSID_FILE ;
 void* SECINITSID_UNLABELED ;
 struct superblock_security_struct* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int superblock_alloc_security(struct super_block *sb)
{
 struct superblock_security_struct *sbsec;

 sbsec = kzalloc(sizeof(struct superblock_security_struct), GFP_KERNEL);
 if (!sbsec)
  return -ENOMEM;

 mutex_init(&sbsec->lock);
 INIT_LIST_HEAD(&sbsec->isec_head);
 spin_lock_init(&sbsec->isec_lock);
 sbsec->sb = sb;
 sbsec->sid = SECINITSID_UNLABELED;
 sbsec->def_sid = SECINITSID_FILE;
 sbsec->mntpoint_sid = SECINITSID_UNLABELED;
 sb->s_security = sbsec;

 return 0;
}
