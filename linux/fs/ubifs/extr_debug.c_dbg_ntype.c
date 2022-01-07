
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *dbg_ntype(int type)
{
 switch (type) {
 case 132:
  return "padding node";
 case 130:
  return "superblock node";
 case 134:
  return "master node";
 case 131:
  return "reference node";
 case 135:
  return "inode node";
 case 137:
  return "direntry node";
 case 128:
  return "xentry node";
 case 138:
  return "data node";
 case 129:
  return "truncate node";
 case 136:
  return "indexing node";
 case 139:
  return "commit start node";
 case 133:
  return "orphan node";
 case 140:
  return "auth node";
 default:
  return "unknown node";
 }
}
