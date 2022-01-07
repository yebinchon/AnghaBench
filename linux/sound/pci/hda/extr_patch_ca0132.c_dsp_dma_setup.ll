; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@DSPDMAC_XFRCNT_BCNT_HIBIT = common dso_local global i32 0, align 4
@DSPDMAC_XFRCNT_BCNT_LOBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"-- dsp_dma_setup() -- Begin ---------\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"count too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INVALID_CHIP_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid chip addr\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"   dsp_dma_setup()    start reg pgm\0A\00", align 1
@DSPDMAC_DMACFG_DBADR_LOBIT = common dso_local global i32 0, align 4
@DSPDMAC_DMACFG_AINCR_LOBIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"write DMACFG Reg fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"   dsp_dma_setup()    Write DMACFG\0A\00", align 1
@DSPDMAC_DSPADROFS_BOFS_LOBIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"write DSPADROFS Reg fail\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"   dsp_dma_setup()    Write DSPADROFS\0A\00", align 1
@DSPDMAC_XFRCNT_CCNT_LOBIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"write XFRCNT Reg fail\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"   dsp_dma_setup()    Write XFRCNT\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"ChipA=0x%x, cnt=0x%x, DMACFG=0x%x, ADROFS=0x%x, XFRCNT=0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"-- dsp_dma_setup() -- Complete ---------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32)* @dsp_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_dma_setup(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* @DSPDMAC_XFRCNT_BCNT_HIBIT, align 4
  %23 = load i32, i32* @DSPDMAC_XFRCNT_BCNT_LOBIT, align 4
  %24 = sub i32 %22, %23
  %25 = add i32 %24, 1
  %26 = shl i32 1, %25
  store i32 %26, i32* %21, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %28 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %21, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %34 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %144

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dsp_chip_to_dsp_addx(i32 %38, i32* %11, i32* %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @INVALID_CHIP_ADDRESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %45 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %144

48:                                               ; preds = %37
  %49 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %50 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @DSPDMAC_DMACFG_DBADR_LOBIT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @DSPDMAC_DMACFG_DBADR_LOBIT, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @DSPDMAC_DMACFG_AINCR_LOBIT, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %66, %48
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %70, %71
  store i32 %72, i32* %18, align 4
  %73 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @DSPDMAC_DMACFG_INST_OFFSET(i32 %74)
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @chipio_write(%struct.hda_codec* %73, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %82 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %144

84:                                               ; preds = %69
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, 1
  %89 = load i32, i32* @DSPDMAC_DSPADROFS_BOFS_LOBIT, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 1
  %94 = add nsw i32 %89, %93
  %95 = shl i32 %88, %94
  store i32 %95, i32* %19, align 4
  %96 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @DSPDMAC_DSPADROFS_INST_OFFSET(i32 %97)
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @chipio_write(%struct.hda_codec* %96, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %84
  %104 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %105 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %144

107:                                              ; preds = %84
  %108 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %109 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* %8, align 4
  %111 = sub i32 %110, 1
  %112 = load i32, i32* @DSPDMAC_XFRCNT_BCNT_LOBIT, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub i32 %114, 1
  %116 = load i32, i32* @DSPDMAC_XFRCNT_CCNT_LOBIT, align 4
  %117 = shl i32 %115, %116
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %20, align 4
  %121 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @DSPDMAC_XFRCNT_INST_OFFSET(i32 %122)
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @chipio_write(%struct.hda_codec* %121, i32 %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %107
  %129 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %130 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %144

132:                                              ; preds = %107
  %133 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %134 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %135 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %143 = call i32 (%struct.hda_codec*, i8*, ...) @codec_dbg(%struct.hda_codec* %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %132, %128, %103, %80, %43, %32
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @dsp_chip_to_dsp_addx(i32, i32*, i32*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @DSPDMAC_DMACFG_INST_OFFSET(i32) #1

declare dso_local i32 @DSPDMAC_DSPADROFS_INST_OFFSET(i32) #1

declare dso_local i32 @DSPDMAC_XFRCNT_INST_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
