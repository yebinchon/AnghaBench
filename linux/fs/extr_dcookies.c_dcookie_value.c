
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dentry; } ;
struct dcookie_struct {TYPE_1__ path; } ;



__attribute__((used)) static inline unsigned long dcookie_value(struct dcookie_struct * dcs)
{
 return (unsigned long)dcs->path.dentry;
}
