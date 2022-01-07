
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quota_format_type {int qf_owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void put_quota_format(struct quota_format_type *fmt)
{
 module_put(fmt->qf_owner);
}
