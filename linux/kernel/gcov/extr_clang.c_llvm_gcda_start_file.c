
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char const* filename; int checksum; int version; } ;


 TYPE_1__* current_info ;
 int memcpy (int *,char const*,int) ;

void llvm_gcda_start_file(const char *orig_filename, const char version[4],
  u32 checksum)
{
 current_info->filename = orig_filename;
 memcpy(&current_info->version, version, sizeof(current_info->version));
 current_info->checksum = checksum;
}
