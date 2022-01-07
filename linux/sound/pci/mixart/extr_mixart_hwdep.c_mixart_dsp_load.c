
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_mixart {int card; int mgr; } ;
struct TYPE_3__ {int addr; } ;
struct mixart_mgr {int board_type; int num_cards; TYPE_2__* pci; struct snd_mixart** chip; TYPE_1__ flowinfo; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;


 int DAUGHTER_TYPE_MASK ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;

 int MIXART_DAUGHTER_TYPE_AES ;
 int MIXART_DAUGHTER_TYPE_NONE ;
 int MIXART_FLOWTABLE_PTR ;
 int MIXART_MEM (struct mixart_mgr*,int) ;

 int MIXART_MOTHERBOARD_XLX_BASE_ADDRESS ;

 int MIXART_PSEUDOREG_BOARDNUMBER ;
 int MIXART_PSEUDOREG_DBRD_PRESENCE_OFFSET ;
 int MIXART_PSEUDOREG_DBRD_TYPE_OFFSET ;
 int MIXART_PSEUDOREG_DXLX_BASE_ADDR_OFFSET ;
 int MIXART_PSEUDOREG_DXLX_SIZE_OFFSET ;
 int MIXART_PSEUDOREG_DXLX_STATUS_OFFSET ;
 int MIXART_PSEUDOREG_ELF_STATUS_OFFSET ;
 int MIXART_PSEUDOREG_MXLX_BASE_ADDR_OFFSET ;
 int MIXART_PSEUDOREG_MXLX_SIZE_OFFSET ;
 int MIXART_PSEUDOREG_MXLX_STATUS_OFFSET ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int memcpy_toio (int ,scalar_t__,int) ;
 int mixart_first_init (struct mixart_mgr*) ;
 int mixart_load_elf (struct mixart_mgr*,struct firmware const*) ;
 int mixart_wait_nice_for_register_value (struct mixart_mgr*,int,int,int,int) ;
 int readl_be (int ) ;
 int snd_card_register (int ) ;
 int snd_mixart_create_mixer (int ) ;
 int snd_mixart_create_pcm (struct snd_mixart*) ;
 int snd_mixart_init_mailbox (struct mixart_mgr*) ;
 int writel_be (int,int ) ;

__attribute__((used)) static int mixart_dsp_load(struct mixart_mgr* mgr, int index, const struct firmware *dsp)
{
 int err, card_index;
 u32 status_xilinx, status_elf, status_daught;
 u32 val;


 status_xilinx = readl_be( MIXART_MEM( mgr,MIXART_PSEUDOREG_MXLX_STATUS_OFFSET ));

 status_elf = readl_be( MIXART_MEM( mgr,MIXART_PSEUDOREG_ELF_STATUS_OFFSET ));

 status_daught = readl_be( MIXART_MEM( mgr,MIXART_PSEUDOREG_DXLX_STATUS_OFFSET ));


 if (status_xilinx == 5) {
  dev_err(&mgr->pci->dev, "miXart is resetting !\n");
  return -EAGAIN;
 }

 switch (index) {
 case 128:


  if (status_xilinx == 4) {
   dev_dbg(&mgr->pci->dev, "xilinx is already loaded !\n");
   return 0;
  }

  if (status_xilinx != 0) {
   dev_err(&mgr->pci->dev,
    "xilinx load error ! status = %d\n",
       status_xilinx);
   return -EIO;
  }


  if (((u32*)(dsp->data))[0] == 0xffffffff)
   return -EINVAL;
  if (dsp->size % 4)
   return -EINVAL;


  writel_be( 1, MIXART_MEM( mgr, MIXART_PSEUDOREG_MXLX_STATUS_OFFSET ));


  writel_be( MIXART_MOTHERBOARD_XLX_BASE_ADDRESS, MIXART_MEM( mgr,MIXART_PSEUDOREG_MXLX_BASE_ADDR_OFFSET ));

  writel_be( dsp->size, MIXART_MEM( mgr, MIXART_PSEUDOREG_MXLX_SIZE_OFFSET ));


  memcpy_toio( MIXART_MEM( mgr, MIXART_MOTHERBOARD_XLX_BASE_ADDRESS), dsp->data, dsp->size);


  writel_be( 2, MIXART_MEM( mgr, MIXART_PSEUDOREG_MXLX_STATUS_OFFSET ));


  return 0;

 case 129:

  if (status_elf == 4) {
   dev_dbg(&mgr->pci->dev, "elf file already loaded !\n");
   return 0;
  }


  if (status_elf != 0) {
   dev_err(&mgr->pci->dev,
    "elf load error ! status = %d\n",
       status_elf);
   return -EIO;
  }


  err = mixart_wait_nice_for_register_value( mgr, MIXART_PSEUDOREG_MXLX_STATUS_OFFSET, 1, 4, 500);
  if (err < 0) {
   dev_err(&mgr->pci->dev, "xilinx was not loaded or "
       "could not be started\n");
   return err;
  }


  writel_be( 0, MIXART_MEM( mgr, MIXART_PSEUDOREG_BOARDNUMBER ) );
  writel_be( 0, MIXART_MEM( mgr, MIXART_FLOWTABLE_PTR ) );


  writel_be( 1, MIXART_MEM( mgr, MIXART_PSEUDOREG_ELF_STATUS_OFFSET ));


  err = mixart_load_elf( mgr, dsp );
  if (err < 0) return err;


  writel_be( 2, MIXART_MEM( mgr, MIXART_PSEUDOREG_ELF_STATUS_OFFSET ));


  err = mixart_wait_nice_for_register_value( mgr, MIXART_PSEUDOREG_ELF_STATUS_OFFSET, 1, 4, 300);
  if (err < 0) {
   dev_err(&mgr->pci->dev, "elf could not be started\n");
   return err;
  }


  writel_be( (u32)mgr->flowinfo.addr, MIXART_MEM( mgr, MIXART_FLOWTABLE_PTR ) );

  return 0;

 case 130:
 default:


  if (status_elf != 4 || status_xilinx != 4) {
   dev_err(&mgr->pci->dev, "xilinx or elf not "
          "successfully loaded\n");
   return -EIO;
  }


  err = mixart_wait_nice_for_register_value( mgr, MIXART_PSEUDOREG_DBRD_PRESENCE_OFFSET, 0, 0, 30);
  if (err < 0) {
   dev_err(&mgr->pci->dev, "error starting elf file\n");
   return err;
  }


  mgr->board_type = (DAUGHTER_TYPE_MASK & readl_be( MIXART_MEM( mgr, MIXART_PSEUDOREG_DBRD_TYPE_OFFSET)));

  if (mgr->board_type == MIXART_DAUGHTER_TYPE_NONE)
   break;


  if (mgr->board_type != MIXART_DAUGHTER_TYPE_AES )
   return -EINVAL;


  if (status_daught != 0) {
   dev_err(&mgr->pci->dev,
    "daughter load error ! status = %d\n",
          status_daught);
   return -EIO;
  }


  if (((u32*)(dsp->data))[0] == 0xffffffff)
   return -EINVAL;
  if (dsp->size % 4)
   return -EINVAL;


  writel_be( dsp->size, MIXART_MEM( mgr, MIXART_PSEUDOREG_DXLX_SIZE_OFFSET ));


  writel_be( 1, MIXART_MEM( mgr, MIXART_PSEUDOREG_DXLX_STATUS_OFFSET ));


  err = mixart_wait_nice_for_register_value( mgr, MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, 1, 2, 30);
  if (err < 0) {
   dev_err(&mgr->pci->dev, "daughter board load error\n");
   return err;
  }


  val = readl_be( MIXART_MEM( mgr, MIXART_PSEUDOREG_DXLX_BASE_ADDR_OFFSET ));
  if (!val)
   return -EINVAL;


  memcpy_toio( MIXART_MEM( mgr, val), dsp->data, dsp->size);


  writel_be( 4, MIXART_MEM( mgr, MIXART_PSEUDOREG_DXLX_STATUS_OFFSET ));


  break;
 }


        err = mixart_wait_nice_for_register_value( mgr, MIXART_PSEUDOREG_DXLX_STATUS_OFFSET, 1, 3, 300);
        if (err < 0) {
  dev_err(&mgr->pci->dev,
      "daughter board could not be initialised\n");
  return err;
 }


 snd_mixart_init_mailbox(mgr);


 err = mixart_first_init(mgr);
        if (err < 0) {
  dev_err(&mgr->pci->dev, "miXart could not be set up\n");
  return err;
 }


        for (card_index = 0; card_index < mgr->num_cards; card_index++) {
  struct snd_mixart *chip = mgr->chip[card_index];

  if ((err = snd_mixart_create_pcm(chip)) < 0)
   return err;

  if (card_index == 0) {
   if ((err = snd_mixart_create_mixer(chip->mgr)) < 0)
           return err;
  }

  if ((err = snd_card_register(chip->card)) < 0)
   return err;
 }

 dev_dbg(&mgr->pci->dev,
  "miXart firmware downloaded and successfully set up\n");

 return 0;
}
