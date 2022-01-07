
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int NOMMU_MAP_COPY ;
 int NOMMU_MAP_DIRECT ;
 int NOMMU_MAP_EXEC ;
 int NOMMU_MAP_READ ;
 int NOMMU_MAP_WRITE ;

__attribute__((used)) static unsigned ramfs_mmap_capabilities(struct file *file)
{
 return NOMMU_MAP_DIRECT | NOMMU_MAP_COPY | NOMMU_MAP_READ |
  NOMMU_MAP_WRITE | NOMMU_MAP_EXEC;
}
