
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int IF_NAMESIZE ;
 scalar_t__ ifindex_to_name_ns (int ,int ,int ,char*) ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_object (int ) ;
 int jsonw_string_field (int ,char*,char*) ;
 int jsonw_uint_field (int ,char*,int ) ;

void print_dev_json(__u32 ifindex, __u64 ns_dev, __u64 ns_inode)
{
 char name[IF_NAMESIZE];

 if (!ifindex)
  return;

 jsonw_name(json_wtr, "dev");
 jsonw_start_object(json_wtr);
 jsonw_uint_field(json_wtr, "ifindex", ifindex);
 jsonw_uint_field(json_wtr, "ns_dev", ns_dev);
 jsonw_uint_field(json_wtr, "ns_inode", ns_inode);
 if (ifindex_to_name_ns(ifindex, ns_dev, ns_inode, name))
  jsonw_string_field(json_wtr, "ifname", name);
 jsonw_end_object(json_wtr);
}
