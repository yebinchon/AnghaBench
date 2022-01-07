
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_dir_entry {void* starthi; void* start; } ;


 void* cpu_to_le16 (int) ;

__attribute__((used)) static inline void fat_set_start(struct msdos_dir_entry *de, int cluster)
{
 de->start = cpu_to_le16(cluster);
 de->starthi = cpu_to_le16(cluster >> 16);
}
