
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rcutorture_type { ____Placeholder_rcutorture_type } rcutorture_type ;



__attribute__((used)) static inline void rcutorture_get_gp_data(enum rcutorture_type test_type,
       int *flags, unsigned long *gp_seq)
{
 *flags = 0;
 *gp_seq = 0;
}
