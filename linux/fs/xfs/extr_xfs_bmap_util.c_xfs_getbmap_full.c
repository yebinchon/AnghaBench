
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getbmapx {scalar_t__ bmv_length; int bmv_entries; int bmv_count; } ;



__attribute__((used)) static inline bool
xfs_getbmap_full(
 struct getbmapx *bmv)
{
 return bmv->bmv_length == 0 || bmv->bmv_entries >= bmv->bmv_count - 1;
}
