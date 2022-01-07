
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int assert (int) ;
 size_t readlink (char const*,char*,size_t) ;

__attribute__((used)) static void get_exec_path(char *tpath, size_t size)
{
 const char *path = "/proc/self/exe";
 ssize_t len;

 len = readlink(path, tpath, size - 1);
 assert(len > 0);
 tpath[len] = 0;
}
