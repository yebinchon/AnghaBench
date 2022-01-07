
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0m {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct intel8x0m*,int ) ;
 int snd_intel8x0m_proc_read ;

__attribute__((used)) static void snd_intel8x0m_proc_init(struct intel8x0m *chip)
{
 snd_card_ro_proc_new(chip->card, "intel8x0m", chip,
        snd_intel8x0m_proc_read);
}
