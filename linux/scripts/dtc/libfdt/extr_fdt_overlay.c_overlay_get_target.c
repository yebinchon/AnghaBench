
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int FDT_ERR_BADOVERLAY ;
 int FDT_ERR_BADPHANDLE ;
 int FDT_ERR_NOTFOUND ;
 char* fdt_getprop (void const*,int,char*,int*) ;
 int fdt_node_offset_by_phandle (void const*,scalar_t__) ;
 int fdt_path_offset (void const*,char const*) ;
 scalar_t__ overlay_get_target_phandle (void const*,int) ;

__attribute__((used)) static int overlay_get_target(const void *fdt, const void *fdto,
         int fragment, char const **pathp)
{
 uint32_t phandle;
 const char *path = ((void*)0);
 int path_len = 0, ret;


 phandle = overlay_get_target_phandle(fdto, fragment);
 if (phandle == (uint32_t)-1)
  return -FDT_ERR_BADPHANDLE;


 if (!phandle) {

  path = fdt_getprop(fdto, fragment, "target-path", &path_len);
  if (path)
   ret = fdt_path_offset(fdt, path);
  else
   ret = path_len;
 } else
  ret = fdt_node_offset_by_phandle(fdt, phandle);
 if (ret < 0 && path_len == -FDT_ERR_NOTFOUND)
  ret = -FDT_ERR_BADOVERLAY;


 if (ret < 0)
  return ret;


 if (pathp)
  *pathp = path ? path : ((void*)0);

 return ret;
}
