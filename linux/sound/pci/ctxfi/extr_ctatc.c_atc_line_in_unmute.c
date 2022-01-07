
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_atc {int dummy; } ;


 int LINEIM ;
 int atc_daio_unmute (struct ct_atc*,unsigned char,int ) ;

__attribute__((used)) static int atc_line_in_unmute(struct ct_atc *atc, unsigned char state)
{
 return atc_daio_unmute(atc, state, LINEIM);
}
