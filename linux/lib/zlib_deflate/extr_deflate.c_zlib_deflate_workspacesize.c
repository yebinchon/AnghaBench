
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deflate_workspace ;


 int BUG_ON (int) ;
 int MAX_MEM_LEVEL ;
 int zlib_deflate_head_memsize (int) ;
 int zlib_deflate_overlay_memsize (int) ;
 int zlib_deflate_prev_memsize (int) ;
 int zlib_deflate_window_memsize (int) ;

int zlib_deflate_workspacesize(int windowBits, int memLevel)
{
    if (windowBits < 0)
        windowBits = -windowBits;


    BUG_ON(memLevel < 1 || memLevel > MAX_MEM_LEVEL || windowBits < 9 ||
       windowBits > 15);

    return sizeof(deflate_workspace)
        + zlib_deflate_window_memsize(windowBits)
        + zlib_deflate_prev_memsize(windowBits)
        + zlib_deflate_head_memsize(memLevel)
        + zlib_deflate_overlay_memsize(memLevel);
}
