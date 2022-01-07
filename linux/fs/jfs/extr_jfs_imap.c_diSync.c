
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inomap {TYPE_2__* im_agctl; int im_l2nbperiext; int im_nbperiext; int im_numfree; int im_numinos; int im_nextiag; int im_freeiag; } ;
struct inode {int i_mapping; int i_sb; } ;
struct dinomap_disk {TYPE_1__* in_agctl; void* in_l2nbperiext; void* in_nbperiext; void* in_numfree; void* in_numinos; void* in_nextiag; void* in_freeiag; } ;
struct TYPE_8__ {struct inomap* i_imap; } ;
struct TYPE_7__ {int l2nbperpage; } ;
struct TYPE_6__ {int numfree; int numinos; int extfree; int inofree; } ;
struct TYPE_5__ {void* numfree; void* numinos; void* extfree; void* inofree; } ;


 int EIO ;
 int IMAPBLKNO ;
 TYPE_4__* JFS_IP (struct inode*) ;
 TYPE_3__* JFS_SBI (int ) ;
 int MAXAG ;
 int PSIZE ;
 int atomic_read (int *) ;
 void* cpu_to_le32 (int ) ;
 int diWriteSpecial (struct inode*,int ) ;
 int filemap_write_and_wait (int ) ;
 struct metapage* get_metapage (struct inode*,int,int ,int ) ;
 int jfs_err (char*) ;
 int write_metapage (struct metapage*) ;

int diSync(struct inode *ipimap)
{
 struct dinomap_disk *dinom_le;
 struct inomap *imp = JFS_IP(ipimap)->i_imap;
 struct metapage *mp;
 int index;





 mp = get_metapage(ipimap,
     IMAPBLKNO << JFS_SBI(ipimap->i_sb)->l2nbperpage,
     PSIZE, 0);
 if (mp == ((void*)0)) {
  jfs_err("diSync: get_metapage failed!");
  return -EIO;
 }


 dinom_le = (struct dinomap_disk *) mp->data;
 dinom_le->in_freeiag = cpu_to_le32(imp->im_freeiag);
 dinom_le->in_nextiag = cpu_to_le32(imp->im_nextiag);
 dinom_le->in_numinos = cpu_to_le32(atomic_read(&imp->im_numinos));
 dinom_le->in_numfree = cpu_to_le32(atomic_read(&imp->im_numfree));
 dinom_le->in_nbperiext = cpu_to_le32(imp->im_nbperiext);
 dinom_le->in_l2nbperiext = cpu_to_le32(imp->im_l2nbperiext);
 for (index = 0; index < MAXAG; index++) {
  dinom_le->in_agctl[index].inofree =
      cpu_to_le32(imp->im_agctl[index].inofree);
  dinom_le->in_agctl[index].extfree =
      cpu_to_le32(imp->im_agctl[index].extfree);
  dinom_le->in_agctl[index].numinos =
      cpu_to_le32(imp->im_agctl[index].numinos);
  dinom_le->in_agctl[index].numfree =
      cpu_to_le32(imp->im_agctl[index].numfree);
 }


 write_metapage(mp);




 filemap_write_and_wait(ipimap->i_mapping);

 diWriteSpecial(ipimap, 0);

 return (0);
}
