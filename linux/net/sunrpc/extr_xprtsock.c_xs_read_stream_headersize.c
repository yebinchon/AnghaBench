
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;



__attribute__((used)) static size_t
xs_read_stream_headersize(bool isfrag)
{
 if (isfrag)
  return sizeof(__be32);
 return 3 * sizeof(__be32);
}
