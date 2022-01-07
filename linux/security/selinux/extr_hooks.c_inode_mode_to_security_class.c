
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u16 ;


 int SECCLASS_BLK_FILE ;
 int SECCLASS_CHR_FILE ;
 int SECCLASS_DIR ;
 int SECCLASS_FIFO_FILE ;
 int SECCLASS_FILE ;
 int SECCLASS_LNK_FILE ;
 int SECCLASS_SOCK_FILE ;





 int S_IFMT ;



__attribute__((used)) static inline u16 inode_mode_to_security_class(umode_t mode)
{
 switch (mode & S_IFMT) {
 case 128:
  return SECCLASS_SOCK_FILE;
 case 130:
  return SECCLASS_LNK_FILE;
 case 129:
  return SECCLASS_FILE;
 case 134:
  return SECCLASS_BLK_FILE;
 case 132:
  return SECCLASS_DIR;
 case 133:
  return SECCLASS_CHR_FILE;
 case 131:
  return SECCLASS_FIFO_FILE;

 }

 return SECCLASS_FILE;
}
