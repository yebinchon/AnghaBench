
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_dent_type(int type)
{
 switch (type) {
 case 129:
  return "file";
 case 132:
  return "dir";
 case 130:
  return "symlink";
 case 134:
  return "blkdev";
 case 133:
  return "char dev";
 case 131:
  return "fifo";
 case 128:
  return "socket";
 default:
  return "unknown/invalid type";
 }
}
