
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int KERN_ERR ;
 int KERN_WARNING ;







 int nilfs_msg (struct super_block*,int ,char*,...) ;

__attribute__((used)) static int nilfs_warn_segment_error(struct super_block *sb, int err)
{
 const char *msg = ((void*)0);

 switch (err) {
 case 131:
  nilfs_msg(sb, KERN_ERR, "I/O error reading segment");
  return -EIO;
 case 130:
  msg = "Magic number mismatch";
  break;
 case 129:
  msg = "Sequence number mismatch";
  break;
 case 133:
  msg = "Checksum error in super root";
  break;
 case 134:
  msg = "Checksum error in segment payload";
  break;
 case 132:
  msg = "Inconsistency found";
  break;
 case 128:
  msg = "No super root in the last segment";
  break;
 default:
  nilfs_msg(sb, KERN_ERR, "unrecognized segment error %d", err);
  return -EINVAL;
 }
 nilfs_msg(sb, KERN_WARNING, "invalid segment: %s", msg);
 return -EINVAL;
}
