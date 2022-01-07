
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int DEF_ADDRS_PER_BLOCK ;
 int NIDS_PER_BLOCK ;

__attribute__((used)) static loff_t max_file_blocks(void)
{
 loff_t result = 0;
 loff_t leaf_count = DEF_ADDRS_PER_BLOCK;
 result += (leaf_count * 2);


 leaf_count *= NIDS_PER_BLOCK;
 result += (leaf_count * 2);


 leaf_count *= NIDS_PER_BLOCK;
 result += leaf_count;

 return result;
}
