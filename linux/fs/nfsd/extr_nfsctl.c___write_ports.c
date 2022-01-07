
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct file {int f_cred; } ;
typedef int ssize_t ;


 int EINVAL ;
 int __write_ports_addfd (char*,struct net*,int ) ;
 int __write_ports_addxprt (char*,struct net*,int ) ;
 int __write_ports_names (char*,struct net*) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static ssize_t __write_ports(struct file *file, char *buf, size_t size,
        struct net *net)
{
 if (size == 0)
  return __write_ports_names(buf, net);

 if (isdigit(buf[0]))
  return __write_ports_addfd(buf, net, file->f_cred);

 if (isalpha(buf[0]))
  return __write_ports_addxprt(buf, net, file->f_cred);

 return -EINVAL;
}
