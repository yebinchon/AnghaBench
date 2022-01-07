; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OXYGEN_SPDIF_C = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_ORIGINAL = common dso_local global i32 0, align 4
@IEC958_AES1_CON_PCM_CODER = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_CATEGORY_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REVISION = common dso_local global i32 0, align 4
@OXYGEN_REVISION_2 = common dso_local global i32 0, align 4
@OXYGEN_MISC = common dso_local global i32 0, align 4
@OXYGEN_MISC_PCI_MEM_W_1_CLOCK = common dso_local global i32 0, align 4
@OXYGEN_AC97_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_AC97_CODEC_0 = common dso_local global i32 0, align 4
@OXYGEN_AC97_CODEC_1 = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_RESET_CODEC = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_2WIRE_SPI_MASK = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_ENABLE_SPI_4_5 = common dso_local global i32 0, align 4
@OXYGEN_DMA_STATUS = common dso_local global i32 0, align 4
@OXYGEN_DMA_PAUSE = common dso_local global i32 0, align 4
@OXYGEN_PLAY_CHANNELS = common dso_local global i32 0, align 4
@OXYGEN_PLAY_CHANNELS_2 = common dso_local global i32 0, align 4
@OXYGEN_DMA_A_BURST_8 = common dso_local global i32 0, align 4
@OXYGEN_DMA_MULTICH_BURST_8 = common dso_local global i32 0, align 4
@OXYGEN_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_MISC_WRITE_PCI_SUBID = common dso_local global i32 0, align 4
@OXYGEN_MISC_REC_C_FROM_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_MISC_REC_B_FROM_AC97 = common dso_local global i32 0, align 4
@OXYGEN_MISC_REC_A_FROM_MULTICH = common dso_local global i32 0, align 4
@OXYGEN_MISC_MIDI = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_FORMAT_16 = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_A_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_B_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_C_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_FORMAT_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_MULTICH_FORMAT_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_CHANNELS = common dso_local global i32 0, align 4
@OXYGEN_REC_CHANNELS_2_2_2 = common dso_local global i32 0, align 4
@OXYGEN_I2S_MULTICH_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_RATE_48000 = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_16 = common dso_local global i32 0, align 4
@OXYGEN_I2S_MASTER = common dso_local global i32 0, align 4
@OXYGEN_I2S_BCLK_64 = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_1 = common dso_local global i32 0, align 4
@OXYGEN_I2S_A_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_I2S_MUTE_MCLK = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_2 = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_I2S_2 = common dso_local global i32 0, align 4
@OXYGEN_I2S_B_FORMAT = common dso_local global i32 0, align 4
@CAPTURE_3_FROM_I2S_3 = common dso_local global i32 0, align 4
@OXYGEN_I2S_C_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_LOOPBACK = common dso_local global i32 0, align 4
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_SENSE_MASK = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_LOCK_MASK = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_LOCK_PAR = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_IN_CLOCK_96 = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_SENSE_PAR = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_IN_CLOCK_MASK = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_OUTPUT_BITS = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_BUS_STATUS = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_LENGTH_8 = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_SPEED_STANDARD = common dso_local global i32 0, align 4
@OXYGEN_MPU401_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_MPU401_LOOPBACK = common dso_local global i32 0, align 4
@OXYGEN_GPI_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_GPIO_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MULTICH_I2S_DAC = common dso_local global i32 0, align 4
@OXYGEN_PLAY_SPDIF_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC0_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC1_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC2_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC3_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_REC_A_ROUTE_I2S_ADC_1 = common dso_local global i32 0, align 4
@OXYGEN_REC_B_ROUTE_I2S_ADC_2 = common dso_local global i32 0, align 4
@OXYGEN_REC_C_ROUTE_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_ADC_MONITOR = common dso_local global i32 0, align 4
@OXYGEN_A_MONITOR_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_A_MONITOR_ROUTE_0_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_A_MONITOR_ROUTE_1_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_A_MONITOR_ROUTE_2_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_A_MONITOR_ROUTE_3_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_AC97_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_AC97_INT_READ_DONE = common dso_local global i32 0, align 4
@OXYGEN_AC97_INT_WRITE_DONE = common dso_local global i32 0, align 4
@OXYGEN_AC97_OUT_CONFIG = common dso_local global i32 0, align 4
@OXYGEN_AC97_IN_CONFIG = common dso_local global i32 0, align 4
@OXYGEN_AC97_CLOCK_DISABLE = common dso_local global i32 0, align 4
@OXYGEN_AC97_NO_CODEC_0 = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@CM9780_GPIO_SETUP = common dso_local global i32 0, align 4
@CM9780_GPIO0IO = common dso_local global i32 0, align 4
@CM9780_GPIO1IO = common dso_local global i32 0, align 4
@CM9780_MIXER = common dso_local global i32 0, align 4
@CM9780_BSTSEL = common dso_local global i32 0, align 4
@CM9780_STRO_MIC = common dso_local global i32 0, align 4
@CM9780_MIX2FR = common dso_local global i32 0, align 4
@CM9780_PCBSW = common dso_local global i32 0, align 4
@CM9780_JACK = common dso_local global i32 0, align 4
@CM9780_RSOE = common dso_local global i32 0, align 4
@CM9780_CBOE = common dso_local global i32 0, align 4
@CM9780_SSOE = common dso_local global i32 0, align 4
@CM9780_FROE = common dso_local global i32 0, align 4
@CM9780_MIC2MIC = common dso_local global i32 0, align 4
@CM9780_LI2LI = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i32 0, align 4
@AC97_PC_BEEP = common dso_local global i32 0, align 4
@AC97_MIC = common dso_local global i32 0, align 4
@AC97_LINE = common dso_local global i32 0, align 4
@AC97_CD = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@AC97_AUX = common dso_local global i32 0, align 4
@AC97_REC_GAIN = common dso_local global i32 0, align 4
@AC97_CENTER_LFE_MASTER = common dso_local global i32 0, align 4
@AC97_SURROUND_MASTER = common dso_local global i32 0, align 4
@CM9780_GPIO_STATUS = common dso_local global i32 0, align 4
@CM9780_GPO0 = common dso_local global i32 0, align 4
@AC97_POWERDOWN = common dso_local global i32 0, align 4
@AC97_PD_PR0 = common dso_local global i32 0, align 4
@AC97_PD_PR1 = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_PRI = common dso_local global i32 0, align 4
@AC97_EA_PRJ = common dso_local global i32 0, align 4
@AC97_EA_PRK = common dso_local global i32 0, align 4
@OXYGEN_AC97_CODEC1_SLOT3 = common dso_local global i32 0, align 4
@OXYGEN_AC97_CODEC1_SLOT4 = common dso_local global i32 0, align 4
@AC97_HEADPHONE = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_REC_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @oxygen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %27 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @OXYGEN_SPDIF_C, align 4
  %29 = load i32, i32* @OXYGEN_SPDIF_ORIGINAL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IEC958_AES1_CON_PCM_CODER, align 4
  %32 = load i32, i32* @OXYGEN_SPDIF_CATEGORY_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %38 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %43 = load i32, i32* @OXYGEN_REVISION, align 4
  %44 = call i32 @oxygen_read8(%struct.oxygen* %42, i32 %43)
  %45 = load i32, i32* @OXYGEN_REVISION_2, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %23
  %49 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %50 = load i32, i32* @OXYGEN_MISC, align 4
  %51 = load i32, i32* @OXYGEN_MISC_PCI_MEM_W_1_CLOCK, align 4
  %52 = call i32 @oxygen_set_bits8(%struct.oxygen* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %23
  %54 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %55 = load i32, i32* @OXYGEN_AC97_CONTROL, align 4
  %56 = call i32 @oxygen_read16(%struct.oxygen* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @OXYGEN_AC97_CODEC_0, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %63 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @OXYGEN_AC97_CODEC_1, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %70 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %72 = load i32, i32* @OXYGEN_FUNCTION, align 4
  %73 = load i32, i32* @OXYGEN_FUNCTION_RESET_CODEC, align 4
  %74 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %75 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %73, %77
  %79 = load i32, i32* @OXYGEN_FUNCTION_RESET_CODEC, align 4
  %80 = load i32, i32* @OXYGEN_FUNCTION_2WIRE_SPI_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @OXYGEN_FUNCTION_ENABLE_SPI_4_5, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @oxygen_write8_masked(%struct.oxygen* %71, i32 %72, i32 %78, i32 %83)
  %85 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %86 = load i32, i32* @OXYGEN_DMA_STATUS, align 4
  %87 = call i32 @oxygen_write8(%struct.oxygen* %85, i32 %86, i32 0)
  %88 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %89 = load i32, i32* @OXYGEN_DMA_PAUSE, align 4
  %90 = call i32 @oxygen_write8(%struct.oxygen* %88, i32 %89, i32 0)
  %91 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %92 = load i32, i32* @OXYGEN_PLAY_CHANNELS, align 4
  %93 = load i32, i32* @OXYGEN_PLAY_CHANNELS_2, align 4
  %94 = load i32, i32* @OXYGEN_DMA_A_BURST_8, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @OXYGEN_DMA_MULTICH_BURST_8, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @oxygen_write8(%struct.oxygen* %91, i32 %92, i32 %97)
  %99 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %100 = load i32, i32* @OXYGEN_INTERRUPT_MASK, align 4
  %101 = call i32 @oxygen_write16(%struct.oxygen* %99, i32 %100, i32 0)
  %102 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %103 = load i32, i32* @OXYGEN_MISC, align 4
  %104 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %105 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @OXYGEN_MISC_WRITE_PCI_SUBID, align 4
  %109 = load i32, i32* @OXYGEN_MISC_REC_C_FROM_SPDIF, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @OXYGEN_MISC_REC_B_FROM_AC97, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @OXYGEN_MISC_REC_A_FROM_MULTICH, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @OXYGEN_MISC_MIDI, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @oxygen_write8_masked(%struct.oxygen* %102, i32 %103, i32 %107, i32 %116)
  %118 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %119 = load i32, i32* @OXYGEN_REC_FORMAT, align 4
  %120 = load i32, i32* @OXYGEN_FORMAT_16, align 4
  %121 = load i32, i32* @OXYGEN_REC_FORMAT_A_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @OXYGEN_FORMAT_16, align 4
  %124 = load i32, i32* @OXYGEN_REC_FORMAT_B_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %122, %125
  %127 = load i32, i32* @OXYGEN_FORMAT_16, align 4
  %128 = load i32, i32* @OXYGEN_REC_FORMAT_C_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %126, %129
  %131 = call i32 @oxygen_write8(%struct.oxygen* %118, i32 %119, i32 %130)
  %132 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %133 = load i32, i32* @OXYGEN_PLAY_FORMAT, align 4
  %134 = load i32, i32* @OXYGEN_FORMAT_16, align 4
  %135 = load i32, i32* @OXYGEN_SPDIF_FORMAT_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* @OXYGEN_FORMAT_16, align 4
  %138 = load i32, i32* @OXYGEN_MULTICH_FORMAT_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  %141 = call i32 @oxygen_write8(%struct.oxygen* %132, i32 %133, i32 %140)
  %142 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %143 = load i32, i32* @OXYGEN_REC_CHANNELS, align 4
  %144 = load i32, i32* @OXYGEN_REC_CHANNELS_2_2_2, align 4
  %145 = call i32 @oxygen_write8(%struct.oxygen* %142, i32 %143, i32 %144)
  %146 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %147 = load i32, i32* @OXYGEN_I2S_MULTICH_FORMAT, align 4
  %148 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %149 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %150 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %148, %152
  %154 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %155 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @OXYGEN_I2S_MCLK(i32 %157)
  %159 = or i32 %153, %158
  %160 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @oxygen_write16(%struct.oxygen* %146, i32 %147, i32 %165)
  %167 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %168 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CAPTURE_0_FROM_I2S_1, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %53
  %175 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %176 = load i32, i32* @OXYGEN_I2S_A_FORMAT, align 4
  %177 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %178 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %179 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %177, %181
  %183 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %184 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @OXYGEN_I2S_MCLK(i32 %186)
  %188 = or i32 %182, %187
  %189 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @oxygen_write16(%struct.oxygen* %175, i32 %176, i32 %194)
  br label %203

196:                                              ; preds = %53
  %197 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %198 = load i32, i32* @OXYGEN_I2S_A_FORMAT, align 4
  %199 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %200 = load i32, i32* @OXYGEN_I2S_MUTE_MCLK, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @oxygen_write16(%struct.oxygen* %197, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %196, %174
  %204 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %205 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CAPTURE_0_FROM_I2S_2, align 4
  %209 = load i32, i32* @CAPTURE_2_FROM_I2S_2, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %207, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %203
  %214 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %215 = load i32, i32* @OXYGEN_I2S_B_FORMAT, align 4
  %216 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %217 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %218 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %216, %220
  %222 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %223 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @OXYGEN_I2S_MCLK(i32 %225)
  %227 = or i32 %221, %226
  %228 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @oxygen_write16(%struct.oxygen* %214, i32 %215, i32 %233)
  br label %242

235:                                              ; preds = %203
  %236 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %237 = load i32, i32* @OXYGEN_I2S_B_FORMAT, align 4
  %238 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %239 = load i32, i32* @OXYGEN_I2S_MUTE_MCLK, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @oxygen_write16(%struct.oxygen* %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %235, %213
  %243 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %244 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CAPTURE_3_FROM_I2S_3, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %272

250:                                              ; preds = %242
  %251 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %252 = load i32, i32* @OXYGEN_I2S_C_FORMAT, align 4
  %253 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %254 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %255 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %253, %257
  %259 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %260 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @OXYGEN_I2S_MCLK(i32 %262)
  %264 = or i32 %258, %263
  %265 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @oxygen_write16(%struct.oxygen* %251, i32 %252, i32 %270)
  br label %279

272:                                              ; preds = %242
  %273 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %274 = load i32, i32* @OXYGEN_I2S_C_FORMAT, align 4
  %275 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %276 = load i32, i32* @OXYGEN_I2S_MUTE_MCLK, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @oxygen_write16(%struct.oxygen* %273, i32 %274, i32 %277)
  br label %279

279:                                              ; preds = %272, %250
  %280 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %281 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %282 = load i32, i32* @OXYGEN_SPDIF_OUT_ENABLE, align 4
  %283 = load i32, i32* @OXYGEN_SPDIF_LOOPBACK, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @oxygen_clear_bits32(%struct.oxygen* %280, i32 %281, i32 %284)
  %286 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %287 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %286, i32 0, i32 6
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %317

293:                                              ; preds = %279
  %294 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %295 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %296 = load i32, i32* @OXYGEN_SPDIF_SENSE_MASK, align 4
  %297 = load i32, i32* @OXYGEN_SPDIF_LOCK_MASK, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @OXYGEN_SPDIF_RATE_MASK, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @OXYGEN_SPDIF_LOCK_PAR, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @OXYGEN_SPDIF_IN_CLOCK_96, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @OXYGEN_SPDIF_SENSE_MASK, align 4
  %306 = load i32, i32* @OXYGEN_SPDIF_LOCK_MASK, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @OXYGEN_SPDIF_RATE_MASK, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @OXYGEN_SPDIF_SENSE_PAR, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @OXYGEN_SPDIF_LOCK_PAR, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @OXYGEN_SPDIF_IN_CLOCK_MASK, align 4
  %315 = or i32 %313, %314
  %316 = call i32 @oxygen_write32_masked(%struct.oxygen* %294, i32 %295, i32 %304, i32 %315)
  br label %326

317:                                              ; preds = %279
  %318 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %319 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %320 = load i32, i32* @OXYGEN_SPDIF_SENSE_MASK, align 4
  %321 = load i32, i32* @OXYGEN_SPDIF_LOCK_MASK, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @OXYGEN_SPDIF_RATE_MASK, align 4
  %324 = or i32 %322, %323
  %325 = call i32 @oxygen_clear_bits32(%struct.oxygen* %318, i32 %319, i32 %324)
  br label %326

326:                                              ; preds = %317, %293
  %327 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %328 = load i32, i32* @OXYGEN_SPDIF_OUTPUT_BITS, align 4
  %329 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %330 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @oxygen_write32(%struct.oxygen* %327, i32 %328, i32 %331)
  %333 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %334 = load i32, i32* @OXYGEN_2WIRE_BUS_STATUS, align 4
  %335 = load i32, i32* @OXYGEN_2WIRE_LENGTH_8, align 4
  %336 = load i32, i32* @OXYGEN_2WIRE_INTERRUPT_MASK, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @OXYGEN_2WIRE_SPEED_STANDARD, align 4
  %339 = or i32 %337, %338
  %340 = call i32 @oxygen_write16(%struct.oxygen* %333, i32 %334, i32 %339)
  %341 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %342 = load i32, i32* @OXYGEN_MPU401_CONTROL, align 4
  %343 = load i32, i32* @OXYGEN_MPU401_LOOPBACK, align 4
  %344 = call i32 @oxygen_clear_bits8(%struct.oxygen* %341, i32 %342, i32 %343)
  %345 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %346 = load i32, i32* @OXYGEN_GPI_INTERRUPT_MASK, align 4
  %347 = call i32 @oxygen_write8(%struct.oxygen* %345, i32 %346, i32 0)
  %348 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %349 = load i32, i32* @OXYGEN_GPIO_INTERRUPT_MASK, align 4
  %350 = call i32 @oxygen_write16(%struct.oxygen* %348, i32 %349, i32 0)
  %351 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %352 = load i32, i32* @OXYGEN_PLAY_ROUTING, align 4
  %353 = load i32, i32* @OXYGEN_PLAY_MULTICH_I2S_DAC, align 4
  %354 = load i32, i32* @OXYGEN_PLAY_SPDIF_SPDIF, align 4
  %355 = or i32 %353, %354
  %356 = load i32, i32* @OXYGEN_PLAY_DAC0_SOURCE_SHIFT, align 4
  %357 = shl i32 0, %356
  %358 = or i32 %355, %357
  %359 = load i32, i32* @OXYGEN_PLAY_DAC1_SOURCE_SHIFT, align 4
  %360 = shl i32 1, %359
  %361 = or i32 %358, %360
  %362 = load i32, i32* @OXYGEN_PLAY_DAC2_SOURCE_SHIFT, align 4
  %363 = shl i32 2, %362
  %364 = or i32 %361, %363
  %365 = load i32, i32* @OXYGEN_PLAY_DAC3_SOURCE_SHIFT, align 4
  %366 = shl i32 3, %365
  %367 = or i32 %364, %366
  %368 = call i32 @oxygen_write16(%struct.oxygen* %351, i32 %352, i32 %367)
  %369 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %370 = load i32, i32* @OXYGEN_REC_ROUTING, align 4
  %371 = load i32, i32* @OXYGEN_REC_A_ROUTE_I2S_ADC_1, align 4
  %372 = load i32, i32* @OXYGEN_REC_B_ROUTE_I2S_ADC_2, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* @OXYGEN_REC_C_ROUTE_SPDIF, align 4
  %375 = or i32 %373, %374
  %376 = call i32 @oxygen_write8(%struct.oxygen* %369, i32 %370, i32 %375)
  %377 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %378 = load i32, i32* @OXYGEN_ADC_MONITOR, align 4
  %379 = call i32 @oxygen_write8(%struct.oxygen* %377, i32 %378, i32 0)
  %380 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %381 = load i32, i32* @OXYGEN_A_MONITOR_ROUTING, align 4
  %382 = load i32, i32* @OXYGEN_A_MONITOR_ROUTE_0_SHIFT, align 4
  %383 = shl i32 0, %382
  %384 = load i32, i32* @OXYGEN_A_MONITOR_ROUTE_1_SHIFT, align 4
  %385 = shl i32 1, %384
  %386 = or i32 %383, %385
  %387 = load i32, i32* @OXYGEN_A_MONITOR_ROUTE_2_SHIFT, align 4
  %388 = shl i32 2, %387
  %389 = or i32 %386, %388
  %390 = load i32, i32* @OXYGEN_A_MONITOR_ROUTE_3_SHIFT, align 4
  %391 = shl i32 3, %390
  %392 = or i32 %389, %391
  %393 = call i32 @oxygen_write8(%struct.oxygen* %380, i32 %381, i32 %392)
  %394 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %395 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %398 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %396, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %326
  %403 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %404 = load i32, i32* @OXYGEN_AC97_INTERRUPT_MASK, align 4
  %405 = load i32, i32* @OXYGEN_AC97_INT_READ_DONE, align 4
  %406 = load i32, i32* @OXYGEN_AC97_INT_WRITE_DONE, align 4
  %407 = or i32 %405, %406
  %408 = call i32 @oxygen_write8(%struct.oxygen* %403, i32 %404, i32 %407)
  br label %413

409:                                              ; preds = %326
  %410 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %411 = load i32, i32* @OXYGEN_AC97_INTERRUPT_MASK, align 4
  %412 = call i32 @oxygen_write8(%struct.oxygen* %410, i32 %411, i32 0)
  br label %413

413:                                              ; preds = %409, %402
  %414 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %415 = load i32, i32* @OXYGEN_AC97_OUT_CONFIG, align 4
  %416 = call i32 @oxygen_write32(%struct.oxygen* %414, i32 %415, i32 0)
  %417 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %418 = load i32, i32* @OXYGEN_AC97_IN_CONFIG, align 4
  %419 = call i32 @oxygen_write32(%struct.oxygen* %417, i32 %418, i32 0)
  %420 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %421 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %424 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %422, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %413
  %429 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %430 = load i32, i32* @OXYGEN_AC97_CONTROL, align 4
  %431 = load i32, i32* @OXYGEN_AC97_CLOCK_DISABLE, align 4
  %432 = call i32 @oxygen_set_bits16(%struct.oxygen* %429, i32 %430, i32 %431)
  br label %433

433:                                              ; preds = %428, %413
  %434 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %435 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %443, label %438

438:                                              ; preds = %433
  %439 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %440 = load i32, i32* @OXYGEN_AC97_CONTROL, align 4
  %441 = load i32, i32* @OXYGEN_AC97_NO_CODEC_0, align 4
  %442 = call i32 @oxygen_set_bits16(%struct.oxygen* %439, i32 %440, i32 %441)
  br label %526

443:                                              ; preds = %433
  %444 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %445 = load i32, i32* @AC97_RESET, align 4
  %446 = call i32 @oxygen_write_ac97(%struct.oxygen* %444, i32 0, i32 %445, i32 0)
  %447 = call i32 @msleep(i32 1)
  %448 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %449 = load i32, i32* @CM9780_GPIO_SETUP, align 4
  %450 = load i32, i32* @CM9780_GPIO0IO, align 4
  %451 = load i32, i32* @CM9780_GPIO1IO, align 4
  %452 = or i32 %450, %451
  %453 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %448, i32 0, i32 %449, i32 %452)
  %454 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %455 = load i32, i32* @CM9780_MIXER, align 4
  %456 = load i32, i32* @CM9780_BSTSEL, align 4
  %457 = load i32, i32* @CM9780_STRO_MIC, align 4
  %458 = or i32 %456, %457
  %459 = load i32, i32* @CM9780_MIX2FR, align 4
  %460 = or i32 %458, %459
  %461 = load i32, i32* @CM9780_PCBSW, align 4
  %462 = or i32 %460, %461
  %463 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %454, i32 0, i32 %455, i32 %462)
  %464 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %465 = load i32, i32* @CM9780_JACK, align 4
  %466 = load i32, i32* @CM9780_RSOE, align 4
  %467 = load i32, i32* @CM9780_CBOE, align 4
  %468 = or i32 %466, %467
  %469 = load i32, i32* @CM9780_SSOE, align 4
  %470 = or i32 %468, %469
  %471 = load i32, i32* @CM9780_FROE, align 4
  %472 = or i32 %470, %471
  %473 = load i32, i32* @CM9780_MIC2MIC, align 4
  %474 = or i32 %472, %473
  %475 = load i32, i32* @CM9780_LI2LI, align 4
  %476 = or i32 %474, %475
  %477 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %464, i32 0, i32 %465, i32 %476)
  %478 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %479 = load i32, i32* @AC97_MASTER, align 4
  %480 = call i32 @oxygen_write_ac97(%struct.oxygen* %478, i32 0, i32 %479, i32 0)
  %481 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %482 = load i32, i32* @AC97_PC_BEEP, align 4
  %483 = call i32 @oxygen_write_ac97(%struct.oxygen* %481, i32 0, i32 %482, i32 32768)
  %484 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %485 = load i32, i32* @AC97_MIC, align 4
  %486 = call i32 @oxygen_write_ac97(%struct.oxygen* %484, i32 0, i32 %485, i32 34824)
  %487 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %488 = load i32, i32* @AC97_LINE, align 4
  %489 = call i32 @oxygen_write_ac97(%struct.oxygen* %487, i32 0, i32 %488, i32 2056)
  %490 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %491 = load i32, i32* @AC97_CD, align 4
  %492 = call i32 @oxygen_write_ac97(%struct.oxygen* %490, i32 0, i32 %491, i32 34824)
  %493 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %494 = load i32, i32* @AC97_VIDEO, align 4
  %495 = call i32 @oxygen_write_ac97(%struct.oxygen* %493, i32 0, i32 %494, i32 34824)
  %496 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %497 = load i32, i32* @AC97_AUX, align 4
  %498 = call i32 @oxygen_write_ac97(%struct.oxygen* %496, i32 0, i32 %497, i32 34824)
  %499 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %500 = load i32, i32* @AC97_REC_GAIN, align 4
  %501 = call i32 @oxygen_write_ac97(%struct.oxygen* %499, i32 0, i32 %500, i32 32768)
  %502 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %503 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %504 = call i32 @oxygen_write_ac97(%struct.oxygen* %502, i32 0, i32 %503, i32 32896)
  %505 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %506 = load i32, i32* @AC97_SURROUND_MASTER, align 4
  %507 = call i32 @oxygen_write_ac97(%struct.oxygen* %505, i32 0, i32 %506, i32 32896)
  %508 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %509 = load i32, i32* @CM9780_GPIO_STATUS, align 4
  %510 = load i32, i32* @CM9780_GPO0, align 4
  %511 = call i32 @oxygen_ac97_clear_bits(%struct.oxygen* %508, i32 0, i32 %509, i32 %510)
  %512 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %513 = load i32, i32* @AC97_POWERDOWN, align 4
  %514 = load i32, i32* @AC97_PD_PR0, align 4
  %515 = load i32, i32* @AC97_PD_PR1, align 4
  %516 = or i32 %514, %515
  %517 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %512, i32 0, i32 %513, i32 %516)
  %518 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %519 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %520 = load i32, i32* @AC97_EA_PRI, align 4
  %521 = load i32, i32* @AC97_EA_PRJ, align 4
  %522 = or i32 %520, %521
  %523 = load i32, i32* @AC97_EA_PRK, align 4
  %524 = or i32 %522, %523
  %525 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %518, i32 0, i32 %519, i32 %524)
  br label %526

526:                                              ; preds = %443, %438
  %527 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %528 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %527, i32 0, i32 5
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %577

531:                                              ; preds = %526
  %532 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %533 = load i32, i32* @OXYGEN_AC97_OUT_CONFIG, align 4
  %534 = load i32, i32* @OXYGEN_AC97_CODEC1_SLOT3, align 4
  %535 = load i32, i32* @OXYGEN_AC97_CODEC1_SLOT4, align 4
  %536 = or i32 %534, %535
  %537 = call i32 @oxygen_set_bits32(%struct.oxygen* %532, i32 %533, i32 %536)
  %538 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %539 = load i32, i32* @AC97_RESET, align 4
  %540 = call i32 @oxygen_write_ac97(%struct.oxygen* %538, i32 1, i32 %539, i32 0)
  %541 = call i32 @msleep(i32 1)
  %542 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %543 = load i32, i32* @AC97_MASTER, align 4
  %544 = call i32 @oxygen_write_ac97(%struct.oxygen* %542, i32 1, i32 %543, i32 0)
  %545 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %546 = load i32, i32* @AC97_HEADPHONE, align 4
  %547 = call i32 @oxygen_write_ac97(%struct.oxygen* %545, i32 1, i32 %546, i32 32768)
  %548 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %549 = load i32, i32* @AC97_PC_BEEP, align 4
  %550 = call i32 @oxygen_write_ac97(%struct.oxygen* %548, i32 1, i32 %549, i32 32768)
  %551 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %552 = load i32, i32* @AC97_MIC, align 4
  %553 = call i32 @oxygen_write_ac97(%struct.oxygen* %551, i32 1, i32 %552, i32 34824)
  %554 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %555 = load i32, i32* @AC97_LINE, align 4
  %556 = call i32 @oxygen_write_ac97(%struct.oxygen* %554, i32 1, i32 %555, i32 34824)
  %557 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %558 = load i32, i32* @AC97_CD, align 4
  %559 = call i32 @oxygen_write_ac97(%struct.oxygen* %557, i32 1, i32 %558, i32 34824)
  %560 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %561 = load i32, i32* @AC97_VIDEO, align 4
  %562 = call i32 @oxygen_write_ac97(%struct.oxygen* %560, i32 1, i32 %561, i32 34824)
  %563 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %564 = load i32, i32* @AC97_AUX, align 4
  %565 = call i32 @oxygen_write_ac97(%struct.oxygen* %563, i32 1, i32 %564, i32 34824)
  %566 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %567 = load i32, i32* @AC97_PCM, align 4
  %568 = call i32 @oxygen_write_ac97(%struct.oxygen* %566, i32 1, i32 %567, i32 2056)
  %569 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %570 = load i32, i32* @AC97_REC_SEL, align 4
  %571 = call i32 @oxygen_write_ac97(%struct.oxygen* %569, i32 1, i32 %570, i32 0)
  %572 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %573 = load i32, i32* @AC97_REC_GAIN, align 4
  %574 = call i32 @oxygen_write_ac97(%struct.oxygen* %572, i32 1, i32 %573, i32 0)
  %575 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %576 = call i32 @oxygen_ac97_set_bits(%struct.oxygen* %575, i32 1, i32 106, i32 64)
  br label %577

577:                                              ; preds = %531, %526
  ret void
}

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_set_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_write8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @OXYGEN_I2S_MCLK(i32) #1

declare dso_local i32 @oxygen_clear_bits32(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write32_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write_ac97(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @oxygen_ac97_set_bits(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_ac97_clear_bits(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_set_bits32(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
