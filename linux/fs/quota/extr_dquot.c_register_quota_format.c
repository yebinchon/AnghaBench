
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quota_format_type {struct quota_format_type* qf_next; } ;


 int dq_list_lock ;
 struct quota_format_type* quota_formats ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int register_quota_format(struct quota_format_type *fmt)
{
 spin_lock(&dq_list_lock);
 fmt->qf_next = quota_formats;
 quota_formats = fmt;
 spin_unlock(&dq_list_lock);
 return 0;
}
