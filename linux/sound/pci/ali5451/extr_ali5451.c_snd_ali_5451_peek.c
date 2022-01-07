
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_REG (struct snd_ali*,unsigned int) ;
 scalar_t__ inl (int ) ;

__attribute__((used)) static inline unsigned int snd_ali_5451_peek(struct snd_ali *codec,
          unsigned int port)
{
 return (unsigned int)inl(ALI_REG(codec, port));
}
