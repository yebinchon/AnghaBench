
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_ENVBUFSIZE ;

__attribute__((used)) static char *kdballocenv(size_t bytes)
{

 static char envbuffer[512];
 static int envbufsize;
 char *ep = ((void*)0);

 if ((512 - envbufsize) >= bytes) {
  ep = &envbuffer[envbufsize];
  envbufsize += bytes;
 }
 return ep;
}
