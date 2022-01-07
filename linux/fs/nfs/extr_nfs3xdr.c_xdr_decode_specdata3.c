
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;
typedef int __be32 ;


 unsigned int MAJOR (int ) ;
 unsigned int MINOR (int ) ;
 int MKDEV (unsigned int,unsigned int) ;
 unsigned int be32_to_cpup (int ) ;

__attribute__((used)) static __be32 *xdr_decode_specdata3(__be32 *p, dev_t *rdev)
{
 unsigned int major, minor;

 major = be32_to_cpup(p++);
 minor = be32_to_cpup(p++);
 *rdev = MKDEV(major, minor);
 if (MAJOR(*rdev) != major || MINOR(*rdev) != minor)
  *rdev = 0;
 return p;
}
