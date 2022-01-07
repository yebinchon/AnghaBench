
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FS_QUOTA_GDQ_ENFD ;
 unsigned int FS_QUOTA_PDQ_ENFD ;
 unsigned int FS_QUOTA_UDQ_ENFD ;




unsigned int qtype_enforce_flag(int type)
{
 switch (type) {
 case 128:
  return FS_QUOTA_UDQ_ENFD;
 case 130:
  return FS_QUOTA_GDQ_ENFD;
 case 129:
  return FS_QUOTA_PDQ_ENFD;
 }
 return 0;
}
