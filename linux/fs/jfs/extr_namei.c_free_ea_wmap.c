
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_6__ {int flag; } ;
typedef TYPE_1__ dxd_t ;
struct TYPE_7__ {TYPE_1__ ea; } ;


 int DXD_EXTENT ;
 TYPE_5__* JFS_IP (struct inode*) ;
 int addressDXD (TYPE_1__*) ;
 int dbFree (struct inode*,int ,int ) ;
 int invalidate_dxd_metapages (struct inode*,TYPE_1__) ;
 int lengthDXD (TYPE_1__*) ;

__attribute__((used)) static inline void free_ea_wmap(struct inode *inode)
{
 dxd_t *ea = &JFS_IP(inode)->ea;

 if (ea->flag & DXD_EXTENT) {

  invalidate_dxd_metapages(inode, *ea);
  dbFree(inode, addressDXD(ea), lengthDXD(ea));
 }
 ea->flag = 0;
}
