
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_quirks {int val_fctl_ftx; } ;
struct sun4i_spdif_dev {int regmap; struct sun4i_spdif_quirks* quirks; } ;


 int SUN4I_SPDIF_CTL ;
 int SUN4I_SPDIF_CTL_RESET ;
 int SUN4I_SPDIF_FCTL ;
 int SUN4I_SPDIF_TXCNT ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sun4i_spdif_configure(struct sun4i_spdif_dev *host)
{
 const struct sun4i_spdif_quirks *quirks = host->quirks;


 regmap_write(host->regmap, SUN4I_SPDIF_CTL, SUN4I_SPDIF_CTL_RESET);


 regmap_update_bits(host->regmap, SUN4I_SPDIF_FCTL,
      quirks->val_fctl_ftx, quirks->val_fctl_ftx);


 regmap_write(host->regmap, SUN4I_SPDIF_TXCNT, 0);
}
