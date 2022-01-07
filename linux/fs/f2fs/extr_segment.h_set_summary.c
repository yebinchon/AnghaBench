
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary {unsigned char version; int ofs_in_node; int nid; } ;
typedef int nid_t ;


 int cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_summary(struct f2fs_summary *sum, nid_t nid,
   unsigned int ofs_in_node, unsigned char version)
{
 sum->nid = cpu_to_le32(nid);
 sum->ofs_in_node = cpu_to_le16(ofs_in_node);
 sum->version = version;
}
