
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int address ;


 int EINVAL ;
 struct net* netns (struct file*) ;
 int nlmsvc_unlock_all_by_ip (struct sockaddr*) ;
 scalar_t__ qword_get (char**,char*,size_t) ;
 scalar_t__ rpc_pton (struct net*,char*,size_t,struct sockaddr*,size_t) ;

__attribute__((used)) static ssize_t write_unlock_ip(struct file *file, char *buf, size_t size)
{
 struct sockaddr_storage address;
 struct sockaddr *sap = (struct sockaddr *)&address;
 size_t salen = sizeof(address);
 char *fo_path;
 struct net *net = netns(file);


 if (size == 0)
  return -EINVAL;

 if (buf[size-1] != '\n')
  return -EINVAL;

 fo_path = buf;
 if (qword_get(&buf, fo_path, size) < 0)
  return -EINVAL;

 if (rpc_pton(net, fo_path, size, sap, salen) == 0)
  return -EINVAL;

 return nlmsvc_unlock_all_by_ip(sap);
}
