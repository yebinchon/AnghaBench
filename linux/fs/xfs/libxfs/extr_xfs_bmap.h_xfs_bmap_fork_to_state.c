
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMAP_ATTRFORK ;
 int BMAP_COWFORK ;



__attribute__((used)) static inline int xfs_bmap_fork_to_state(int whichfork)
{
 switch (whichfork) {
 case 129:
  return BMAP_ATTRFORK;
 case 128:
  return BMAP_COWFORK;
 default:
  return 0;
 }
}
