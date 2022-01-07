
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inomap {struct inode* im_ipimap; TYPE_1__* im_agctl; void* im_l2nbperiext; void* im_nbperiext; int im_numfree; int im_numinos; void* im_nextiag; void* im_freeiag; } ;
struct inode {int i_sb; } ;
struct dinomap_disk {TYPE_2__* in_agctl; int in_l2nbperiext; int in_nbperiext; int in_numfree; int in_numinos; int in_nextiag; int in_freeiag; } ;
struct TYPE_8__ {struct inomap* i_imap; } ;
struct TYPE_7__ {int l2nbperpage; } ;
struct TYPE_6__ {int numfree; int numinos; int extfree; int inofree; } ;
struct TYPE_5__ {void* numfree; void* numinos; void* extfree; void* inofree; } ;


 int AG_LOCK_INIT (struct inomap*,int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IAGFREE_LOCK_INIT (struct inomap*) ;
 int IMAPBLKNO ;
 TYPE_4__* JFS_IP (struct inode*) ;
 TYPE_3__* JFS_SBI (int ) ;
 int MAXAG ;
 int PSIZE ;
 int atomic_set (int *,void*) ;
 int jfs_err (char*) ;
 int kfree (struct inomap*) ;
 struct inomap* kmalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 struct metapage* read_metapage (struct inode*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;

int diMount(struct inode *ipimap)
{
 struct inomap *imap;
 struct metapage *mp;
 int index;
 struct dinomap_disk *dinom_le;





 imap = kmalloc(sizeof(struct inomap), GFP_KERNEL);
 if (imap == ((void*)0)) {
  jfs_err("diMount: kmalloc returned NULL!");
  return -ENOMEM;
 }



 mp = read_metapage(ipimap,
      IMAPBLKNO << JFS_SBI(ipimap->i_sb)->l2nbperpage,
      PSIZE, 0);
 if (mp == ((void*)0)) {
  kfree(imap);
  return -EIO;
 }


 dinom_le = (struct dinomap_disk *) mp->data;
 imap->im_freeiag = le32_to_cpu(dinom_le->in_freeiag);
 imap->im_nextiag = le32_to_cpu(dinom_le->in_nextiag);
 atomic_set(&imap->im_numinos, le32_to_cpu(dinom_le->in_numinos));
 atomic_set(&imap->im_numfree, le32_to_cpu(dinom_le->in_numfree));
 imap->im_nbperiext = le32_to_cpu(dinom_le->in_nbperiext);
 imap->im_l2nbperiext = le32_to_cpu(dinom_le->in_l2nbperiext);
 for (index = 0; index < MAXAG; index++) {
  imap->im_agctl[index].inofree =
      le32_to_cpu(dinom_le->in_agctl[index].inofree);
  imap->im_agctl[index].extfree =
      le32_to_cpu(dinom_le->in_agctl[index].extfree);
  imap->im_agctl[index].numinos =
      le32_to_cpu(dinom_le->in_agctl[index].numinos);
  imap->im_agctl[index].numfree =
      le32_to_cpu(dinom_le->in_agctl[index].numfree);
 }


 release_metapage(mp);





 IAGFREE_LOCK_INIT(imap);


 for (index = 0; index < MAXAG; index++) {
  AG_LOCK_INIT(imap, index);
 }




 imap->im_ipimap = ipimap;
 JFS_IP(ipimap)->i_imap = imap;

 return (0);
}
