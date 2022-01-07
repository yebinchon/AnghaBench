
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct address_space {int dummy; } ;


 int mpage_writepages (struct address_space*,struct writeback_control*,int ) ;
 int udf_get_block ;

__attribute__((used)) static int udf_writepages(struct address_space *mapping,
   struct writeback_control *wbc)
{
 return mpage_writepages(mapping, wbc, udf_get_block);
}
