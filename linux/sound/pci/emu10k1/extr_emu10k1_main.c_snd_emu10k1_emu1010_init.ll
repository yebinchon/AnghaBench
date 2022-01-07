; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_emu1010_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_emu1010_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"emu1010: Special config.\0A\00", align 1
@HCFG = common dso_local global i64 0, align 8
@EMU_HANA_DOCK_PWR = common dso_local global i32 0, align 4
@EMU_HANA_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reg1 = 0x%x\0A\00", align 1
@EMU_HANA_FPGA_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"reg2 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"emu1010: FPGA failed to return to programming mode\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"emu1010: EMU_HANA_ID = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"emu1010: Loading Firmware failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"emu1010: Loading Hana Firmware file failed, reg = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"emu1010: Hana Firmware loaded\0A\00", align 1
@EMU_HANA_MAJOR_REV = common dso_local global i32 0, align 4
@EMU_HANA_MINOR_REV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"emu1010: Hana version: %u.%u\0A\00", align 1
@EMU_HANA_DOCK_PWR_ON = common dso_local global i32 0, align 4
@EMU_HANA_OPTION_CARDS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"emu1010: Card options = 0x%x\0A\00", align 1
@EMU_HANA_OPTICAL_TYPE = common dso_local global i32 0, align 4
@EMU_HANA_OPTICAL_IN_ADAT = common dso_local global i32 0, align 4
@EMU_HANA_OPTICAL_OUT_ADAT = common dso_local global i32 0, align 4
@EMU_HANA_ADC_PADS = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_MISC = common dso_local global i32 0, align 4
@EMU_HANA_DOCK_LEDS_2 = common dso_local global i32 0, align 4
@EMU_HANA_DAC_PADS = common dso_local global i32 0, align 4
@EMU_HANA_SPDIF_MODE = common dso_local global i32 0, align 4
@EMU_HANA_MIDI_IN = common dso_local global i32 0, align 4
@EMU_HANA_MIDI_OUT = common dso_local global i32 0, align 4
@EMU_HANA_IRQ_ENABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"emu1010: Card options3 = 0x%x\0A\00", align 1
@EMU_HANA_DEFCLOCK = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK = common dso_local global i32 0, align 4
@EMU_HANA_WCLOCK_INT_48K = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_0 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_MIC_A1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_1 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_MIC_B1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_2 = common dso_local global i32 0, align 4
@EMU_SRC_HAMOA_ADC_LEFT2 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_3 = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_4 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC1_LEFT1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_5 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC1_RIGHT1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_6 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC2_LEFT1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_7 = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC2_RIGHT1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE2_EMU32_8 = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_9 = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_A = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_B = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_C = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_D = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_E = common dso_local global i32 0, align 4
@EMU_DST_ALICE2_EMU32_F = common dso_local global i32 0, align 4
@EMU_SRC_SILENCE = common dso_local global i64 0, align 8
@EMU_DST_HANA_ADAT = common dso_local global i32 0, align 4
@EMU_DST_ALICE_I2S0_LEFT = common dso_local global i32 0, align 4
@EMU_DST_ALICE_I2S0_RIGHT = common dso_local global i32 0, align 4
@EMU_DST_ALICE_I2S1_LEFT = common dso_local global i32 0, align 4
@EMU_DST_ALICE_I2S1_RIGHT = common dso_local global i32 0, align 4
@EMU_DST_ALICE_I2S2_LEFT = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC3_LEFT1 = common dso_local global i64 0, align 8
@EMU_DST_ALICE_I2S2_RIGHT = common dso_local global i32 0, align 4
@EMU_SRC_DOCK_ADC3_RIGHT1 = common dso_local global i64 0, align 8
@EMU_HANA_UNMUTE = common dso_local global i32 0, align 4
@EMU_MODEL_EMU1616 = common dso_local global i64 0, align 8
@EMU_DST_DOCK_DAC1_LEFT1 = common dso_local global i32 0, align 4
@EMU_SRC_ALICE_EMU32A = common dso_local global i64 0, align 8
@EMU_DST_DOCK_DAC1_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC2_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC2_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC3_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC3_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_MANA_DAC_LEFT = common dso_local global i32 0, align 4
@EMU_DST_MANA_DAC_RIGHT = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC4_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_DAC4_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_PHONES_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_PHONES_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_SPDIF_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_DOCK_SPDIF_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_HANA_SPDIF_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_HANA_SPDIF_RIGHT1 = common dso_local global i32 0, align 4
@EMU_DST_HAMOA_DAC_LEFT1 = common dso_local global i32 0, align 4
@EMU_DST_HAMOA_DAC_RIGHT1 = common dso_local global i32 0, align 4
@EMU_SRC_ALICE_EMU32B = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_LEFT1 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_LEFT3 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_LEFT4 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_RIGHT1 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_RIGHT2 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_RIGHT3 = common dso_local global i64 0, align 8
@EMU_SRC_HAMOA_ADC_RIGHT4 = common dso_local global i64 0, align 8
@EMU_SRC_HANA_ADAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*)* @snd_emu10k1_emu1010_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_emu1010_init(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_info(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HCFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outl(i32 368652, i64 %19)
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HCFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 368644, i64 %25)
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HCFG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i32 368640, i64 %31)
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HCFG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 368640, i64 %37)
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %40 = load i32, i32* @EMU_HANA_DOCK_PWR, align 4
  %41 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %39, i32 %40, i32 0)
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = load i32, i32* @EMU_HANA_ID, align 4
  %44 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %42, i32 %43, i32* %7)
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 63
  %54 = icmp eq i32 %53, 21
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %57 = load i32, i32* @EMU_HANA_FPGA_CONFIG, align 4
  %58 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %56, i32 %57, i32 2)
  br label %59

59:                                               ; preds = %55, %1
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %61 = load i32, i32* @EMU_HANA_ID, align 4
  %62 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %60, i32 %61, i32* %7)
  %63 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 63
  %72 = icmp eq i32 %71, 21
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @dev_info(i32 %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %804

82:                                               ; preds = %59
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i32, i8*, ...) @dev_info(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %91 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %92 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %91, i32 0, i32 4
  %93 = call i32 @snd_emu1010_load_firmware(%struct.snd_emu10k1* %90, i32 0, i32* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %82
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_info(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %804

104:                                              ; preds = %82
  %105 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %106 = load i32, i32* @EMU_HANA_ID, align 4
  %107 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %105, i32 %106, i32* %7)
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 63
  %110 = icmp ne i32 %109, 21
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %113 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i32, i8*, ...) @dev_info(i32 %116, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %804

121:                                              ; preds = %104
  %122 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %123 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_info(i32 %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %129 = load i32, i32* @EMU_HANA_MAJOR_REV, align 4
  %130 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %128, i32 %129, i32* %5)
  %131 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %132 = load i32, i32* @EMU_HANA_MINOR_REV, align 4
  %133 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %131, i32 %132, i32* %6)
  %134 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %135 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (i32, i8*, ...) @dev_info(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %143 = load i32, i32* @EMU_HANA_DOCK_PWR, align 4
  %144 = load i32, i32* @EMU_HANA_DOCK_PWR_ON, align 4
  %145 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %142, i32 %143, i32 %144)
  %146 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %147 = load i32, i32* @EMU_HANA_OPTION_CARDS, align 4
  %148 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %146, i32 %147, i32* %7)
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %150 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i32, i8*, ...) @dev_info(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  %156 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %157 = load i32, i32* @EMU_HANA_OPTION_CARDS, align 4
  %158 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %156, i32 %157, i32* %7)
  %159 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %160 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %159, i32 0, i32 3
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i32, i8*, ...) @dev_info(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %164)
  %166 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %167 = load i32, i32* @EMU_HANA_OPTICAL_TYPE, align 4
  %168 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %166, i32 %167, i32* %5)
  %169 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %170 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %173 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  store i32 0, i32* %5, align 4
  %175 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %176 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %121
  %181 = load i32, i32* @EMU_HANA_OPTICAL_IN_ADAT, align 4
  br label %183

182:                                              ; preds = %121
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  %185 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %186 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* @EMU_HANA_OPTICAL_OUT_ADAT, align 4
  br label %193

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i32 [ %191, %190 ], [ 0, %192 ]
  %195 = or i32 %184, %194
  store i32 %195, i32* %5, align 4
  %196 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %197 = load i32, i32* @EMU_HANA_OPTICAL_TYPE, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %196, i32 %197, i32 %198)
  %200 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %201 = load i32, i32* @EMU_HANA_ADC_PADS, align 4
  %202 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %200, i32 %201, i32* %5)
  %203 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %204 = load i32, i32* @EMU_HANA_ADC_PADS, align 4
  %205 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %203, i32 %204, i32 0)
  %206 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %207 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  %209 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %210 = load i32, i32* @EMU_HANA_DOCK_MISC, align 4
  %211 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %209, i32 %210, i32* %5)
  %212 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %213 = load i32, i32* @EMU_HANA_DOCK_MISC, align 4
  %214 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %212, i32 %213, i32 48)
  %215 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %216 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %217 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %215, i32 %216, i32 18)
  %218 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %219 = load i32, i32* @EMU_HANA_DAC_PADS, align 4
  %220 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %218, i32 %219, i32* %5)
  %221 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %222 = load i32, i32* @EMU_HANA_DAC_PADS, align 4
  %223 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %221, i32 %222, i32 15)
  %224 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %225 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  store i32 15, i32* %226, align 4
  %227 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %228 = load i32, i32* @EMU_HANA_DOCK_MISC, align 4
  %229 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %227, i32 %228, i32* %5)
  %230 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %231 = load i32, i32* @EMU_HANA_DOCK_MISC, align 4
  %232 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %230, i32 %231, i32 48)
  %233 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %234 = load i32, i32* @EMU_HANA_SPDIF_MODE, align 4
  %235 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %233, i32 %234, i32* %5)
  %236 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %237 = load i32, i32* @EMU_HANA_SPDIF_MODE, align 4
  %238 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %236, i32 %237, i32 16)
  %239 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %240 = load i32, i32* @EMU_HANA_MIDI_IN, align 4
  %241 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %239, i32 %240, i32 25)
  %242 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %243 = load i32, i32* @EMU_HANA_MIDI_OUT, align 4
  %244 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %242, i32 %243, i32 12)
  %245 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %246 = load i32, i32* @EMU_HANA_IRQ_ENABLE, align 4
  %247 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %245, i32 %246, i32 0)
  %248 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %249 = load i32, i32* @EMU_HANA_OPTION_CARDS, align 4
  %250 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %248, i32 %249, i32* %7)
  %251 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %252 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %251, i32 0, i32 3
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 (i32, i8*, ...) @dev_info(i32 %255, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %256)
  %258 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %259 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %260 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %258, i32 %259, i32 0)
  %261 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %262 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %263 = load i32, i32* @EMU_HANA_WCLOCK_INT_48K, align 4
  %264 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %261, i32 %262, i32 %263)
  %265 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %266 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %267 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %265, i32 %266, i32 18)
  %268 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %269 = load i32, i32* @EMU_DST_ALICE2_EMU32_0, align 4
  %270 = load i64, i64* @EMU_SRC_DOCK_MIC_A1, align 8
  %271 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %268, i32 %269, i64 %270)
  %272 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %273 = load i32, i32* @EMU_DST_ALICE2_EMU32_1, align 4
  %274 = load i64, i64* @EMU_SRC_DOCK_MIC_B1, align 8
  %275 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %272, i32 %273, i64 %274)
  %276 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %277 = load i32, i32* @EMU_DST_ALICE2_EMU32_2, align 4
  %278 = load i64, i64* @EMU_SRC_HAMOA_ADC_LEFT2, align 8
  %279 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %276, i32 %277, i64 %278)
  %280 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %281 = load i32, i32* @EMU_DST_ALICE2_EMU32_3, align 4
  %282 = load i64, i64* @EMU_SRC_HAMOA_ADC_LEFT2, align 8
  %283 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %280, i32 %281, i64 %282)
  %284 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %285 = load i32, i32* @EMU_DST_ALICE2_EMU32_4, align 4
  %286 = load i64, i64* @EMU_SRC_DOCK_ADC1_LEFT1, align 8
  %287 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %284, i32 %285, i64 %286)
  %288 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %289 = load i32, i32* @EMU_DST_ALICE2_EMU32_5, align 4
  %290 = load i64, i64* @EMU_SRC_DOCK_ADC1_RIGHT1, align 8
  %291 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %288, i32 %289, i64 %290)
  %292 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %293 = load i32, i32* @EMU_DST_ALICE2_EMU32_6, align 4
  %294 = load i64, i64* @EMU_SRC_DOCK_ADC2_LEFT1, align 8
  %295 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %292, i32 %293, i64 %294)
  %296 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %297 = load i32, i32* @EMU_DST_ALICE2_EMU32_7, align 4
  %298 = load i64, i64* @EMU_SRC_DOCK_ADC2_RIGHT1, align 8
  %299 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %296, i32 %297, i64 %298)
  %300 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %301 = load i32, i32* @EMU_DST_ALICE2_EMU32_8, align 4
  %302 = load i64, i64* @EMU_SRC_DOCK_MIC_A1, align 8
  %303 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %300, i32 %301, i64 %302)
  %304 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %305 = load i32, i32* @EMU_DST_ALICE2_EMU32_9, align 4
  %306 = load i64, i64* @EMU_SRC_DOCK_MIC_B1, align 8
  %307 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %304, i32 %305, i64 %306)
  %308 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %309 = load i32, i32* @EMU_DST_ALICE2_EMU32_A, align 4
  %310 = load i64, i64* @EMU_SRC_HAMOA_ADC_LEFT2, align 8
  %311 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %308, i32 %309, i64 %310)
  %312 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %313 = load i32, i32* @EMU_DST_ALICE2_EMU32_B, align 4
  %314 = load i64, i64* @EMU_SRC_HAMOA_ADC_LEFT2, align 8
  %315 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %312, i32 %313, i64 %314)
  %316 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %317 = load i32, i32* @EMU_DST_ALICE2_EMU32_C, align 4
  %318 = load i64, i64* @EMU_SRC_DOCK_ADC1_LEFT1, align 8
  %319 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %316, i32 %317, i64 %318)
  %320 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %321 = load i32, i32* @EMU_DST_ALICE2_EMU32_D, align 4
  %322 = load i64, i64* @EMU_SRC_DOCK_ADC1_RIGHT1, align 8
  %323 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %320, i32 %321, i64 %322)
  %324 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %325 = load i32, i32* @EMU_DST_ALICE2_EMU32_E, align 4
  %326 = load i64, i64* @EMU_SRC_DOCK_ADC2_LEFT1, align 8
  %327 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %324, i32 %325, i64 %326)
  %328 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %329 = load i32, i32* @EMU_DST_ALICE2_EMU32_F, align 4
  %330 = load i64, i64* @EMU_SRC_DOCK_ADC2_RIGHT1, align 8
  %331 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %328, i32 %329, i64 %330)
  store i32 0, i32* %4, align 4
  br label %332

332:                                              ; preds = %341, %193
  %333 = load i32, i32* %4, align 4
  %334 = icmp ult i32 %333, 32
  br i1 %334, label %335, label %344

335:                                              ; preds = %332
  %336 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %337 = load i32, i32* %4, align 4
  %338 = add i32 256, %337
  %339 = load i64, i64* @EMU_SRC_SILENCE, align 8
  %340 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %336, i32 %338, i64 %339)
  br label %341

341:                                              ; preds = %335
  %342 = load i32, i32* %4, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %4, align 4
  br label %332

344:                                              ; preds = %332
  store i32 0, i32* %4, align 4
  br label %345

345:                                              ; preds = %354, %344
  %346 = load i32, i32* %4, align 4
  %347 = icmp ult i32 %346, 4
  br i1 %347, label %348, label %357

348:                                              ; preds = %345
  %349 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %350 = load i32, i32* %4, align 4
  %351 = add i32 512, %350
  %352 = load i64, i64* @EMU_SRC_SILENCE, align 8
  %353 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %349, i32 %351, i64 %352)
  br label %354

354:                                              ; preds = %348
  %355 = load i32, i32* %4, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %345

357:                                              ; preds = %345
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %367, %357
  %359 = load i32, i32* %4, align 4
  %360 = icmp ult i32 %359, 7
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %363 = load i32, i32* %4, align 4
  %364 = add i32 768, %363
  %365 = load i64, i64* @EMU_SRC_SILENCE, align 8
  %366 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %362, i32 %364, i64 %365)
  br label %367

367:                                              ; preds = %361
  %368 = load i32, i32* %4, align 4
  %369 = add i32 %368, 1
  store i32 %369, i32* %4, align 4
  br label %358

370:                                              ; preds = %358
  store i32 0, i32* %4, align 4
  br label %371

371:                                              ; preds = %381, %370
  %372 = load i32, i32* %4, align 4
  %373 = icmp ult i32 %372, 7
  br i1 %373, label %374, label %384

374:                                              ; preds = %371
  %375 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %376 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %377 = load i32, i32* %4, align 4
  %378 = add i32 %376, %377
  %379 = load i64, i64* @EMU_SRC_SILENCE, align 8
  %380 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %375, i32 %378, i64 %379)
  br label %381

381:                                              ; preds = %374
  %382 = load i32, i32* %4, align 4
  %383 = add i32 %382, 1
  store i32 %383, i32* %4, align 4
  br label %371

384:                                              ; preds = %371
  %385 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %386 = load i32, i32* @EMU_DST_ALICE_I2S0_LEFT, align 4
  %387 = load i64, i64* @EMU_SRC_DOCK_ADC1_LEFT1, align 8
  %388 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %385, i32 %386, i64 %387)
  %389 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %390 = load i32, i32* @EMU_DST_ALICE_I2S0_RIGHT, align 4
  %391 = load i64, i64* @EMU_SRC_DOCK_ADC1_RIGHT1, align 8
  %392 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %389, i32 %390, i64 %391)
  %393 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %394 = load i32, i32* @EMU_DST_ALICE_I2S1_LEFT, align 4
  %395 = load i64, i64* @EMU_SRC_DOCK_ADC2_LEFT1, align 8
  %396 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %393, i32 %394, i64 %395)
  %397 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %398 = load i32, i32* @EMU_DST_ALICE_I2S1_RIGHT, align 4
  %399 = load i64, i64* @EMU_SRC_DOCK_ADC2_RIGHT1, align 8
  %400 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %397, i32 %398, i64 %399)
  %401 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %402 = load i32, i32* @EMU_DST_ALICE_I2S2_LEFT, align 4
  %403 = load i64, i64* @EMU_SRC_DOCK_ADC3_LEFT1, align 8
  %404 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %401, i32 %402, i64 %403)
  %405 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %406 = load i32, i32* @EMU_DST_ALICE_I2S2_RIGHT, align 4
  %407 = load i64, i64* @EMU_SRC_DOCK_ADC3_RIGHT1, align 8
  %408 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %405, i32 %406, i64 %407)
  %409 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %410 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %411 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %409, i32 %410, i32 1)
  %412 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %413 = load i32, i32* @EMU_HANA_OPTION_CARDS, align 4
  %414 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %412, i32 %413, i32* %5)
  %415 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %416 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @HCFG, align 8
  %419 = add nsw i64 %417, %418
  %420 = call i32 @outl(i32 40960, i64 %419)
  %421 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %422 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @HCFG, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @outl(i32 40961, i64 %425)
  %427 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %428 = load i32, i32* @EMU_HANA_OPTION_CARDS, align 4
  %429 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %427, i32 %428, i32* %5)
  %430 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %431 = load i32, i32* @EMU_HANA_MIDI_IN, align 4
  %432 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %430, i32 %431, i32 25)
  %433 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %434 = load i32, i32* @EMU_HANA_MIDI_OUT, align 4
  %435 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %433, i32 %434, i32 12)
  %436 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %437 = load i32, i32* @EMU_HANA_MIDI_IN, align 4
  %438 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %436, i32 %437, i32 25)
  %439 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %440 = load i32, i32* @EMU_HANA_MIDI_OUT, align 4
  %441 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %439, i32 %440, i32 12)
  %442 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %443 = load i32, i32* @EMU_HANA_SPDIF_MODE, align 4
  %444 = call i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %442, i32 %443, i32* %5)
  %445 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %446 = load i32, i32* @EMU_HANA_SPDIF_MODE, align 4
  %447 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %445, i32 %446, i32 16)
  %448 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %449 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %448, i32 0, i32 1
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @EMU_MODEL_EMU1616, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %536

455:                                              ; preds = %384
  %456 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %457 = load i32, i32* @EMU_DST_DOCK_DAC1_LEFT1, align 4
  %458 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %459 = add nsw i64 %458, 0
  %460 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %456, i32 %457, i64 %459)
  %461 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %462 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 4
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  store i32 17, i32* %465, align 4
  %466 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %467 = load i32, i32* @EMU_DST_DOCK_DAC1_RIGHT1, align 4
  %468 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %469 = add nsw i64 %468, 1
  %470 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %466, i32 %467, i64 %469)
  %471 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %472 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 4
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 1
  store i32 18, i32* %475, align 4
  %476 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %477 = load i32, i32* @EMU_DST_DOCK_DAC2_LEFT1, align 4
  %478 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %479 = add nsw i64 %478, 2
  %480 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %476, i32 %477, i64 %479)
  %481 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %482 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 4
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 2
  store i32 19, i32* %485, align 4
  %486 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %487 = load i32, i32* @EMU_DST_DOCK_DAC2_RIGHT1, align 4
  %488 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %489 = add nsw i64 %488, 3
  %490 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %486, i32 %487, i64 %489)
  %491 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %492 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 4
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 3
  store i32 20, i32* %495, align 4
  %496 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %497 = load i32, i32* @EMU_DST_DOCK_DAC3_LEFT1, align 4
  %498 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %499 = add nsw i64 %498, 4
  %500 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %496, i32 %497, i64 %499)
  %501 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %502 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 4
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 4
  store i32 21, i32* %505, align 4
  %506 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %507 = load i32, i32* @EMU_DST_DOCK_DAC3_RIGHT1, align 4
  %508 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %509 = add nsw i64 %508, 5
  %510 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %506, i32 %507, i64 %509)
  %511 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %512 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 4
  %514 = load i32*, i32** %513, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 5
  store i32 22, i32* %515, align 4
  %516 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %517 = load i32, i32* @EMU_DST_MANA_DAC_LEFT, align 4
  %518 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %519 = add nsw i64 %518, 0
  %520 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %516, i32 %517, i64 %519)
  %521 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %522 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i32 0, i32 4
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 16
  store i32 17, i32* %525, align 4
  %526 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %527 = load i32, i32* @EMU_DST_MANA_DAC_RIGHT, align 4
  %528 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %529 = add nsw i64 %528, 1
  %530 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %526, i32 %527, i64 %529)
  %531 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %532 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 4
  %534 = load i32*, i32** %533, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 17
  store i32 18, i32* %535, align 4
  br label %784

536:                                              ; preds = %384
  %537 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %538 = load i32, i32* @EMU_DST_DOCK_DAC1_LEFT1, align 4
  %539 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %540 = add nsw i64 %539, 0
  %541 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %537, i32 %538, i64 %540)
  %542 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %543 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 4
  %545 = load i32*, i32** %544, align 8
  %546 = getelementptr inbounds i32, i32* %545, i64 0
  store i32 21, i32* %546, align 4
  %547 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %548 = load i32, i32* @EMU_DST_DOCK_DAC1_RIGHT1, align 4
  %549 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %550 = add nsw i64 %549, 1
  %551 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %547, i32 %548, i64 %550)
  %552 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %553 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 4
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 1
  store i32 22, i32* %556, align 4
  %557 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %558 = load i32, i32* @EMU_DST_DOCK_DAC2_LEFT1, align 4
  %559 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %560 = add nsw i64 %559, 2
  %561 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %557, i32 %558, i64 %560)
  %562 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %563 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %563, i32 0, i32 4
  %565 = load i32*, i32** %564, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 2
  store i32 23, i32* %566, align 4
  %567 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %568 = load i32, i32* @EMU_DST_DOCK_DAC2_RIGHT1, align 4
  %569 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %570 = add nsw i64 %569, 3
  %571 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %567, i32 %568, i64 %570)
  %572 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %573 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 4
  %575 = load i32*, i32** %574, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 3
  store i32 24, i32* %576, align 4
  %577 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %578 = load i32, i32* @EMU_DST_DOCK_DAC3_LEFT1, align 4
  %579 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %580 = add nsw i64 %579, 4
  %581 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %577, i32 %578, i64 %580)
  %582 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %583 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i32 0, i32 4
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 4
  store i32 25, i32* %586, align 4
  %587 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %588 = load i32, i32* @EMU_DST_DOCK_DAC3_RIGHT1, align 4
  %589 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %590 = add nsw i64 %589, 5
  %591 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %587, i32 %588, i64 %590)
  %592 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %593 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %593, i32 0, i32 4
  %595 = load i32*, i32** %594, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 5
  store i32 26, i32* %596, align 4
  %597 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %598 = load i32, i32* @EMU_DST_DOCK_DAC4_LEFT1, align 4
  %599 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %600 = add nsw i64 %599, 6
  %601 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %597, i32 %598, i64 %600)
  %602 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %603 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 4
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 6
  store i32 27, i32* %606, align 4
  %607 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %608 = load i32, i32* @EMU_DST_DOCK_DAC4_RIGHT1, align 4
  %609 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %610 = add nsw i64 %609, 7
  %611 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %607, i32 %608, i64 %610)
  %612 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %613 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i32 0, i32 4
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 7
  store i32 28, i32* %616, align 4
  %617 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %618 = load i32, i32* @EMU_DST_DOCK_PHONES_LEFT1, align 4
  %619 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %620 = add nsw i64 %619, 0
  %621 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %617, i32 %618, i64 %620)
  %622 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %623 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %623, i32 0, i32 4
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 8
  store i32 21, i32* %626, align 4
  %627 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %628 = load i32, i32* @EMU_DST_DOCK_PHONES_RIGHT1, align 4
  %629 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %630 = add nsw i64 %629, 1
  %631 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %627, i32 %628, i64 %630)
  %632 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %633 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 4
  %635 = load i32*, i32** %634, align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 9
  store i32 22, i32* %636, align 4
  %637 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %638 = load i32, i32* @EMU_DST_DOCK_SPDIF_LEFT1, align 4
  %639 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %640 = add nsw i64 %639, 0
  %641 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %637, i32 %638, i64 %640)
  %642 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %643 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 4
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 10
  store i32 21, i32* %646, align 4
  %647 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %648 = load i32, i32* @EMU_DST_DOCK_SPDIF_RIGHT1, align 4
  %649 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %650 = add nsw i64 %649, 1
  %651 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %647, i32 %648, i64 %650)
  %652 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %653 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %653, i32 0, i32 4
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 11
  store i32 22, i32* %656, align 4
  %657 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %658 = load i32, i32* @EMU_DST_HANA_SPDIF_LEFT1, align 4
  %659 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %660 = add nsw i64 %659, 0
  %661 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %657, i32 %658, i64 %660)
  %662 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %663 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %663, i32 0, i32 4
  %665 = load i32*, i32** %664, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 12
  store i32 21, i32* %666, align 4
  %667 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %668 = load i32, i32* @EMU_DST_HANA_SPDIF_RIGHT1, align 4
  %669 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %670 = add nsw i64 %669, 1
  %671 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %667, i32 %668, i64 %670)
  %672 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %673 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 4
  %675 = load i32*, i32** %674, align 8
  %676 = getelementptr inbounds i32, i32* %675, i64 13
  store i32 22, i32* %676, align 4
  %677 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %678 = load i32, i32* @EMU_DST_HAMOA_DAC_LEFT1, align 4
  %679 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %680 = add nsw i64 %679, 0
  %681 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %677, i32 %678, i64 %680)
  %682 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %683 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %683, i32 0, i32 4
  %685 = load i32*, i32** %684, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 14
  store i32 21, i32* %686, align 4
  %687 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %688 = load i32, i32* @EMU_DST_HAMOA_DAC_RIGHT1, align 4
  %689 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %690 = add nsw i64 %689, 1
  %691 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %687, i32 %688, i64 %690)
  %692 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %693 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %693, i32 0, i32 4
  %695 = load i32*, i32** %694, align 8
  %696 = getelementptr inbounds i32, i32* %695, i64 15
  store i32 22, i32* %696, align 4
  %697 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %698 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %699 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %700 = add nsw i64 %699, 0
  %701 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %697, i32 %698, i64 %700)
  %702 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %703 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %703, i32 0, i32 4
  %705 = load i32*, i32** %704, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 16
  store i32 21, i32* %706, align 4
  %707 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %708 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %709 = add i32 %708, 1
  %710 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %711 = add nsw i64 %710, 1
  %712 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %707, i32 %709, i64 %711)
  %713 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %714 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %714, i32 0, i32 4
  %716 = load i32*, i32** %715, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 17
  store i32 22, i32* %717, align 4
  %718 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %719 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %720 = add i32 %719, 2
  %721 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %722 = add nsw i64 %721, 2
  %723 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %718, i32 %720, i64 %722)
  %724 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %725 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %724, i32 0, i32 0
  %726 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %725, i32 0, i32 4
  %727 = load i32*, i32** %726, align 8
  %728 = getelementptr inbounds i32, i32* %727, i64 18
  store i32 23, i32* %728, align 4
  %729 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %730 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %731 = add i32 %730, 3
  %732 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %733 = add nsw i64 %732, 3
  %734 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %729, i32 %731, i64 %733)
  %735 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %736 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %736, i32 0, i32 4
  %738 = load i32*, i32** %737, align 8
  %739 = getelementptr inbounds i32, i32* %738, i64 19
  store i32 24, i32* %739, align 4
  %740 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %741 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %742 = add i32 %741, 4
  %743 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %744 = add nsw i64 %743, 4
  %745 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %740, i32 %742, i64 %744)
  %746 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %747 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %747, i32 0, i32 4
  %749 = load i32*, i32** %748, align 8
  %750 = getelementptr inbounds i32, i32* %749, i64 20
  store i32 25, i32* %750, align 4
  %751 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %752 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %753 = add i32 %752, 5
  %754 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %755 = add nsw i64 %754, 5
  %756 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %751, i32 %753, i64 %755)
  %757 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %758 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %757, i32 0, i32 0
  %759 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %758, i32 0, i32 4
  %760 = load i32*, i32** %759, align 8
  %761 = getelementptr inbounds i32, i32* %760, i64 21
  store i32 26, i32* %761, align 4
  %762 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %763 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %764 = add i32 %763, 6
  %765 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %766 = add nsw i64 %765, 6
  %767 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %762, i32 %764, i64 %766)
  %768 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %769 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %768, i32 0, i32 0
  %770 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %769, i32 0, i32 4
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 22
  store i32 27, i32* %772, align 4
  %773 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %774 = load i32, i32* @EMU_DST_HANA_ADAT, align 4
  %775 = add i32 %774, 7
  %776 = load i64, i64* @EMU_SRC_ALICE_EMU32A, align 8
  %777 = add nsw i64 %776, 7
  %778 = call i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1* %773, i32 %775, i64 %777)
  %779 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %780 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %779, i32 0, i32 0
  %781 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %780, i32 0, i32 4
  %782 = load i32*, i32** %781, align 8
  %783 = getelementptr inbounds i32, i32* %782, i64 23
  store i32 28, i32* %783, align 4
  br label %784

784:                                              ; preds = %536, %455
  %785 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %786 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %787 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %785, i32 %786, i32 0)
  %788 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %789 = load i32, i32* @EMU_HANA_DEFCLOCK, align 4
  %790 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %788, i32 %789, i32 0)
  %791 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %792 = load i32, i32* @EMU_HANA_WCLOCK, align 4
  %793 = load i32, i32* @EMU_HANA_WCLOCK_INT_48K, align 4
  %794 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %791, i32 %792, i32 %793)
  %795 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %796 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %795, i32 0, i32 0
  %797 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %796, i32 0, i32 5
  store i32 1, i32* %797, align 8
  %798 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %799 = load i32, i32* @EMU_HANA_DOCK_LEDS_2, align 4
  %800 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %798, i32 %799, i32 18)
  %801 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %802 = load i32, i32* @EMU_HANA_UNMUTE, align 4
  %803 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %801, i32 %802, i32 1)
  store i32 0, i32* %2, align 4
  br label %804

804:                                              ; preds = %784, %111, %96, %73
  %805 = load i32, i32* %2, align 4
  ret i32 %805
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_emu1010_load_firmware(%struct.snd_emu10k1*, i32, i32*) #1

declare dso_local i32 @snd_emu1010_fpga_link_dst_src_write(%struct.snd_emu10k1*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
