
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_info {int tb; } ;


 struct super_block* sb_from_tb (int ) ;

__attribute__((used)) static inline struct super_block *sb_from_bi(struct buffer_info *bi)
{
 return bi ? sb_from_tb(bi->tb) : ((void*)0);
}
