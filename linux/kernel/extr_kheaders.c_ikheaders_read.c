
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int kernel_headers_data ;
 int memcpy (char*,int *,size_t) ;

__attribute__((used)) static ssize_t
ikheaders_read(struct file *file, struct kobject *kobj,
        struct bin_attribute *bin_attr,
        char *buf, loff_t off, size_t len)
{
 memcpy(buf, &kernel_headers_data + off, len);
 return len;
}
