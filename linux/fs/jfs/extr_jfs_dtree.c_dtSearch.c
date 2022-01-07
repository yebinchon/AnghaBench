
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
struct super_block {int dummy; } ;
struct metapage {int dummy; } ;
struct ldtentry {int inumber; } ;
struct inode {struct super_block* i_sb; } ;
struct component_name {int name; int namlen; } ;
struct btstack {int nsplit; struct btframe* top; } ;
struct btframe {int index; struct metapage* mp; void* bn; } ;
typedef size_t s8 ;
typedef void* s64 ;
typedef int pxd_t ;
typedef scalar_t__ ino_t ;
struct TYPE_8__ {int nextindex; int flag; } ;
struct TYPE_9__ {int * slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
struct TYPE_10__ {int mntflag; int l2bsize; } ;


 int BT_CLR (struct btstack*) ;
 int BT_LEAF ;
 int BT_PUSH (struct btstack*,void*,int) ;
 int BT_STACK_DUMP (struct btstack*) ;
 scalar_t__ BT_STACK_FULL (struct btstack*) ;
 int DT_GETPAGE (struct inode*,void*,struct metapage*,int,TYPE_2__*,int) ;
 size_t* DT_GETSTBL (TYPE_2__*) ;
 int DT_PUTPAGE (struct metapage*) ;
 int EEXIST ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ESTALE ;
 int GFP_NOFS ;
 int JFS_CREATE ;
 int JFS_LOOKUP ;
 scalar_t__ JFS_NAME_MAX ;
 int JFS_OS2 ;
 int JFS_REMOVE ;
 int JFS_RENAME ;
 TYPE_5__* JFS_SBI (struct super_block*) ;
 int UniStrcpy (int ,int ) ;
 void* addressPXD (int *) ;
 int ciCompare (struct component_name*,TYPE_2__*,size_t,int) ;
 int ciToUpper (struct component_name*) ;
 int dtCompare (struct component_name*,TYPE_2__*,size_t) ;
 int jfs_error (struct super_block*,char*) ;
 int kfree (int ) ;
 int kmalloc_array (scalar_t__,int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lengthPXD (int *) ;

int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
      struct btstack * btstack, int flag)
{
 int rc = 0;
 int cmp = 1;
 s64 bn;
 struct metapage *mp;
 dtpage_t *p;
 s8 *stbl;
 int base, index, lim;
 struct btframe *btsp;
 pxd_t *pxd;
 int psize = 288;
 ino_t inumber;
 struct component_name ciKey;
 struct super_block *sb = ip->i_sb;

 ciKey.name = kmalloc_array(JFS_NAME_MAX + 1, sizeof(wchar_t),
       GFP_NOFS);
 if (!ciKey.name) {
  rc = -ENOMEM;
  goto dtSearch_Exit2;
 }



 UniStrcpy(ciKey.name, key->name);
 ciKey.namlen = key->namlen;


 if ((JFS_SBI(sb)->mntflag & JFS_OS2) == JFS_OS2) {
  ciToUpper(&ciKey);
 }
 BT_CLR(btstack);


 btstack->nsplit = 1;
 for (bn = 0;;) {

  DT_GETPAGE(ip, bn, mp, psize, p, rc);
  if (rc)
   goto dtSearch_Exit1;


  stbl = DT_GETSTBL(p);




  for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
   index = base + (lim >> 1);

   if (p->header.flag & BT_LEAF) {

    cmp =
        ciCompare(&ciKey, p, stbl[index],
           JFS_SBI(sb)->mntflag);
   } else {


    cmp = dtCompare(&ciKey, p, stbl[index]);


   }
   if (cmp == 0) {






    if (p->header.flag & BT_LEAF) {
     inumber = le32_to_cpu(
   ((struct ldtentry *) & p->slot[stbl[index]])->inumber);




     if (flag == JFS_LOOKUP) {
      *data = inumber;
      rc = 0;
      goto out;
     }




     if (flag == JFS_CREATE) {
      *data = inumber;
      rc = -EEXIST;
      goto out;
     }




     if ((flag == JFS_REMOVE ||
          flag == JFS_RENAME) &&
         *data != inumber) {
      rc = -ESTALE;
      goto out;
     }





     *data = inumber;
     btsp = btstack->top;
     btsp->bn = bn;
     btsp->index = index;
     btsp->mp = mp;

     rc = 0;
     goto dtSearch_Exit1;
    }




    goto getChild;
   }

   if (cmp > 0) {
    base = index + 1;
    --lim;
   }
  }
  if (p->header.flag & BT_LEAF) {



   if (flag == JFS_LOOKUP || flag == JFS_REMOVE ||
       flag == JFS_RENAME) {
    rc = -ENOENT;
    goto out;
   }






   *data = 0;
   btsp = btstack->top;
   btsp->bn = bn;
   btsp->index = base;
   btsp->mp = mp;

   rc = 0;
   goto dtSearch_Exit1;
  }







  index = base ? base - 1 : base;




       getChild:

  if (BT_STACK_FULL(btstack)) {



   jfs_error(sb, "stack overrun!\n");
   BT_STACK_DUMP(btstack);
   rc = -EIO;
   goto out;
  }
  btstack->nsplit++;


  BT_PUSH(btstack, bn, index);


  pxd = (pxd_t *) & p->slot[stbl[index]];
  bn = addressPXD(pxd);
  psize = lengthPXD(pxd) << JFS_SBI(ip->i_sb)->l2bsize;


  DT_PUTPAGE(mp);
 }

      out:
 DT_PUTPAGE(mp);

      dtSearch_Exit1:

 kfree(ciKey.name);

      dtSearch_Exit2:

 return rc;
}
