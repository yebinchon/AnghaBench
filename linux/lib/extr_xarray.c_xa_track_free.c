
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int xa_flags; } ;


 int XA_FLAGS_TRACK_FREE ;

__attribute__((used)) static inline bool xa_track_free(const struct xarray *xa)
{
 return xa->xa_flags & XA_FLAGS_TRACK_FREE;
}
