
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct dentry {TYPE_1__ d_name; } ;



__attribute__((used)) static bool ovl_is_temp_index(struct dentry *index)
{
 return index->d_name.name[0] == '#';
}
