
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;

 int LOCK_MAND ;
 int LOCK_RW ;



__attribute__((used)) static inline int flock_translate_cmd(int cmd) {
 if (cmd & LOCK_MAND)
  return cmd & (LOCK_MAND | LOCK_RW);
 switch (cmd) {
 case 129:
  return F_RDLCK;
 case 130:
  return F_WRLCK;
 case 128:
  return F_UNLCK;
 }
 return -EINVAL;
}
