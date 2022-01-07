
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef int uint32_t ;
struct TYPE_2__ {int flags; } ;
struct fileEntry {TYPE_1__ icbTag; int permissions; } ;
typedef int permissions ;


 int ICBTAG_FLAG_SETGID ;
 int ICBTAG_FLAG_SETUID ;
 int ICBTAG_FLAG_STICKY ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static umode_t udf_convert_permissions(struct fileEntry *fe)
{
 umode_t mode;
 uint32_t permissions;
 uint32_t flags;

 permissions = le32_to_cpu(fe->permissions);
 flags = le16_to_cpu(fe->icbTag.flags);

 mode = ((permissions) & 0007) |
  ((permissions >> 2) & 0070) |
  ((permissions >> 4) & 0700) |
  ((flags & ICBTAG_FLAG_SETUID) ? S_ISUID : 0) |
  ((flags & ICBTAG_FLAG_SETGID) ? S_ISGID : 0) |
  ((flags & ICBTAG_FLAG_STICKY) ? S_ISVTX : 0);

 return mode;
}
