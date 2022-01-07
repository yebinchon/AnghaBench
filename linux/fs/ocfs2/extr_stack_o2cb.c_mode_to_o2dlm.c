
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int LKM_MAXMODE ;

__attribute__((used)) static inline int mode_to_o2dlm(int mode)
{
 BUG_ON(mode > LKM_MAXMODE);

 return mode;
}
