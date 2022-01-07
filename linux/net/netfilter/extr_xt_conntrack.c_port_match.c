
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static inline bool
port_match(u16 min, u16 max, u16 port, bool invert)
{
 return (port >= min && port <= max) ^ invert;
}
