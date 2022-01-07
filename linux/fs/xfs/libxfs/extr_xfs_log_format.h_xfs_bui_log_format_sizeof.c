
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_map_extent {int dummy; } ;
struct xfs_bui_log_format {int dummy; } ;



__attribute__((used)) static inline size_t
xfs_bui_log_format_sizeof(
 unsigned int nr)
{
 return sizeof(struct xfs_bui_log_format) +
   nr * sizeof(struct xfs_map_extent);
}
