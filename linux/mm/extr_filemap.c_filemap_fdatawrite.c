
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int WB_SYNC_ALL ;
 int __filemap_fdatawrite (struct address_space*,int ) ;

int filemap_fdatawrite(struct address_space *mapping)
{
 return __filemap_fdatawrite(mapping, WB_SYNC_ALL);
}
