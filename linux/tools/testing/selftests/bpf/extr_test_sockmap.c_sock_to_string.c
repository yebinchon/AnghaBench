
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c1 ;
 int c2 ;
 int p1 ;
 int p2 ;
 int s1 ;
 int s2 ;

char *sock_to_string(int s)
{
 if (s == c1)
  return "client1";
 else if (s == c2)
  return "client2";
 else if (s == s1)
  return "server1";
 else if (s == s2)
  return "server2";
 else if (s == p1)
  return "peer1";
 else if (s == p2)
  return "peer2";
 else
  return "unknown";
}
