
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zpool_mapmode { ____Placeholder_zpool_mapmode } zpool_mapmode ;


 void* z3fold_map (void*,unsigned long) ;

__attribute__((used)) static void *z3fold_zpool_map(void *pool, unsigned long handle,
   enum zpool_mapmode mm)
{
 return z3fold_map(pool, handle);
}
