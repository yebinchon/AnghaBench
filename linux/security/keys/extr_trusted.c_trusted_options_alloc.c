
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_key_options {int keyhandle; int keytype; } ;


 int GFP_KERNEL ;
 int SRKHANDLE ;
 int SRK_keytype ;
 int chip ;
 struct trusted_key_options* kzalloc (int,int ) ;
 int tpm_is_tpm2 (int ) ;

__attribute__((used)) static struct trusted_key_options *trusted_options_alloc(void)
{
 struct trusted_key_options *options;
 int tpm2;

 tpm2 = tpm_is_tpm2(chip);
 if (tpm2 < 0)
  return ((void*)0);

 options = kzalloc(sizeof *options, GFP_KERNEL);
 if (options) {

  options->keytype = SRK_keytype;

  if (!tpm2)
   options->keyhandle = SRKHANDLE;
 }
 return options;
}
