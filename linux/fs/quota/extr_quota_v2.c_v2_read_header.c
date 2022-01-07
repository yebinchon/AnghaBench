
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v2_disk_dqheader {int dummy; } ;
struct super_block {TYPE_1__* s_op; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* quota_read ) (struct super_block*,int,char*,int,int ) ;} ;


 int EIO ;
 int quota_error (struct super_block*,char*,int,int) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;

__attribute__((used)) static int v2_read_header(struct super_block *sb, int type,
     struct v2_disk_dqheader *dqhead)
{
 ssize_t size;

 size = sb->s_op->quota_read(sb, type, (char *)dqhead,
        sizeof(struct v2_disk_dqheader), 0);
 if (size != sizeof(struct v2_disk_dqheader)) {
  quota_error(sb, "Failed header read: expected=%zd got=%zd",
       sizeof(struct v2_disk_dqheader), size);
  if (size < 0)
   return size;
  return -EIO;
 }
 return 0;
}
