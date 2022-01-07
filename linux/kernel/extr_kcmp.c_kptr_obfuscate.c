
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long** cookies ;

__attribute__((used)) static long kptr_obfuscate(long v, int type)
{
 return (v ^ cookies[type][0]) * cookies[type][1];
}
