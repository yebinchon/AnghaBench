
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsplus_extent {int block_count; int start_block; } ;


 int EXTENT ;
 int be32_to_cpu (int ) ;
 int hfs_dbg (int ,char*) ;
 int hfs_dbg_cont (int ,char*,...) ;

__attribute__((used)) static void hfsplus_dump_extent(struct hfsplus_extent *extent)
{
 int i;

 hfs_dbg(EXTENT, "   ");
 for (i = 0; i < 8; i++)
  hfs_dbg_cont(EXTENT, " %u:%u",
        be32_to_cpu(extent[i].start_block),
        be32_to_cpu(extent[i].block_count));
 hfs_dbg_cont(EXTENT, "\n");
}
