; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"-- dsp_dma_setup_common() -- Begin ---------\0A\00", align 1
@DSPDMAC_DMA_CFG_CHANNEL_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dma chan num invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"dma already active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@INVALID_CHIP_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid chip addr\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DSPDMAC_CHNLPROP_AC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"   dsp_dma_setup_common()    start reg pgm\0A\00", align 1
@DSPDMAC_CHNLPROP_INST_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"read CHNLPROP Reg fail\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"dsp_dma_setup_common() Read CHNLPROP\0A\00", align 1
@DSPDMAC_CHNLPROP_MSPCE_LOBIT = common dso_local global i32 0, align 4
@DSPDMAC_CHNLPROP_DCON_LOBIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"write CHNLPROP Reg fail\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"   dsp_dma_setup_common()    Write CHNLPROP\0A\00", align 1
@DSPDMAC_ACTIVE_INST_OFFSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"read ACTIVE Reg fail\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"dsp_dma_setup_common() Read ACTIVE\0A\00", align 1
@DSPDMAC_ACTIVE_AAR_LOBIT = common dso_local global i32 0, align 4
@DSPDMAC_ACTIVE_AAR_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"write ACTIVE Reg fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"   dsp_dma_setup_common()    Write ACTIVE\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"write AUDCHSEL Reg fail\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"   dsp_dma_setup_common()    Write AUDCHSEL\0A\00", align 1
@DSPDMAC_IRQCNT_BICNT_MASK = common dso_local global i32 0, align 4
@DSPDMAC_IRQCNT_CICNT_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"write IRQCNT Reg fail\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"   dsp_dma_setup_common()    Write IRQCNT\0A\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"ChipA=0x%x,DspA=0x%x,dmaCh=%u, CHSEL=0x%x,CHPROP=0x%x,Active=0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"-- dsp_dma_setup_common() -- Complete ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32)* @dsp_dma_setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_dma_setup_common(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %19 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @DSPDMAC_DMA_CFG_CHANNEL_COUNT, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %25 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %185

28:                                               ; preds = %5
  %29 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @dsp_is_dma_active(%struct.hda_codec* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %35 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %185

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dsp_chip_to_dsp_addx(i32 %39, i32* %16, i32* %17)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @INVALID_CHIP_ADDRESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %46 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %185

49:                                               ; preds = %38
  %50 = load i32, i32* @DSPDMAC_CHNLPROP_AC_MASK, align 4
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %52 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %57 = load i32, i32* @DSPDMAC_CHNLPROP_INST_OFFSET, align 4
  %58 = call i32 @chipio_read(%struct.hda_codec* %56, i32 %57, i32* %13)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %63 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %185

65:                                               ; preds = %55
  %66 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %67 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %49
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @DSPDMAC_CHNLPROP_MSPCE_LOBIT, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %72, %73
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %86

79:                                               ; preds = %68
  %80 = load i32, i32* @DSPDMAC_CHNLPROP_MSPCE_LOBIT, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %80, %81
  %83 = shl i32 1, %82
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i32, i32* @DSPDMAC_CHNLPROP_DCON_LOBIT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %87, %88
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %95 = load i32, i32* @DSPDMAC_CHNLPROP_INST_OFFSET, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @chipio_write(%struct.hda_codec* %94, i32 %95, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %102 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %185

104:                                              ; preds = %86
  %105 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %106 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %111 = load i32, i32* @DSPDMAC_ACTIVE_INST_OFFSET, align 4
  %112 = call i32 @chipio_read(%struct.hda_codec* %110, i32 %111, i32* %15)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %117 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %185

119:                                              ; preds = %109
  %120 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %121 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %104
  %123 = load i32, i32* @DSPDMAC_ACTIVE_AAR_LOBIT, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %123, %124
  %126 = shl i32 1, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* @DSPDMAC_ACTIVE_AAR_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %133 = load i32, i32* @DSPDMAC_ACTIVE_INST_OFFSET, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @chipio_write(%struct.hda_codec* %132, i32 %133, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %122
  %139 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %140 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %6, align 4
  br label %185

142:                                              ; preds = %122
  %143 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %144 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %145 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @DSPDMAC_AUDCHSEL_INST_OFFSET(i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @chipio_write(%struct.hda_codec* %145, i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %154 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %6, align 4
  br label %185

156:                                              ; preds = %142
  %157 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %158 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %157, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %159 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @DSPDMAC_IRQCNT_INST_OFFSET(i32 %160)
  %162 = load i32, i32* @DSPDMAC_IRQCNT_BICNT_MASK, align 4
  %163 = load i32, i32* @DSPDMAC_IRQCNT_CICNT_MASK, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @chipio_write(%struct.hda_codec* %159, i32 %161, i32 %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %170 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %6, align 4
  br label %185

172:                                              ; preds = %156
  %173 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %174 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %173, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %175 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %175, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0), i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %184 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %183, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %172, %168, %152, %138, %115, %100, %61, %44, %33, %23
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, ...) #1

declare dso_local i64 @dsp_is_dma_active(%struct.hda_codec*, i32) #1

declare dso_local i32 @dsp_chip_to_dsp_addx(i32, i32*, i32*) #1

declare dso_local i32 @chipio_read(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @DSPDMAC_AUDCHSEL_INST_OFFSET(i32) #1

declare dso_local i32 @DSPDMAC_IRQCNT_INST_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
