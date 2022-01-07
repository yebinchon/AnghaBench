
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MAX_ARGS ;

__attribute__((used)) static int command_size(const char **argv)
{
 int size = 0;

 while (*argv) {
  size++;
  argv++;
 }

 BUG_ON(size >= MAX_ARGS);

 return size;
}
