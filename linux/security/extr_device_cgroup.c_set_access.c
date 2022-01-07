
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCLEN ;
 short DEVCG_ACC_MKNOD ;
 short DEVCG_ACC_READ ;
 short DEVCG_ACC_WRITE ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static void set_access(char *acc, short access)
{
 int idx = 0;
 memset(acc, 0, ACCLEN);
 if (access & DEVCG_ACC_READ)
  acc[idx++] = 'r';
 if (access & DEVCG_ACC_WRITE)
  acc[idx++] = 'w';
 if (access & DEVCG_ACC_MKNOD)
  acc[idx++] = 'm';
}
