
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int IF_NAMESIZE ;
 scalar_t__ ifindex_to_name_ns (int,int ,int ,char*) ;
 int printf (char*,...) ;

void print_dev_plain(__u32 ifindex, __u64 ns_dev, __u64 ns_inode)
{
 char name[IF_NAMESIZE];

 if (!ifindex)
  return;

 printf("  offloaded_to ");
 if (ifindex_to_name_ns(ifindex, ns_dev, ns_inode, name))
  printf("%s", name);
 else
  printf("ifindex %u ns_dev %llu ns_ino %llu",
         ifindex, ns_dev, ns_inode);
}
