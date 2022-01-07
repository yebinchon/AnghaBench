; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"-- dsp_dma_stop() -- Begin ---------\0A\00", align 1
@DSPDMAC_CHNLSTART_INST_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"read CHNLSTART reg fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"-- dsp_dma_stop()    Read CHNLSTART\0A\00", align 1
@DSPDMAC_CHNLSTART_EN_MASK = common dso_local global i32 0, align 4
@DSPDMAC_CHNLSTART_DIS_MASK = common dso_local global i32 0, align 4
@DSPDMAC_CHNLSTART_DIS_LOBIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"write CHNLSTART reg fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"-- dsp_dma_stop() -- Complete ---------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @dsp_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_dma_stop(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = call i32 @codec_dbg(%struct.hda_codec* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %16 = load i32, i32* @DSPDMAC_CHNLSTART_INST_OFFSET, align 4
  %17 = call i32 @chipio_read(%struct.hda_codec* %15, i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %22 = call i32 @codec_dbg(%struct.hda_codec* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %14
  %25 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %26 = call i32 @codec_dbg(%struct.hda_codec* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @DSPDMAC_CHNLSTART_EN_MASK, align 4
  %28 = load i32, i32* @DSPDMAC_CHNLSTART_DIS_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %24, %3
  %34 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %35 = load i32, i32* @DSPDMAC_CHNLSTART_INST_OFFSET, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DSPDMAC_CHNLSTART_DIS_LOBIT, align 4
  %39 = add i32 %37, %38
  %40 = shl i32 1, %39
  %41 = or i32 %36, %40
  %42 = call i32 @chipio_write(%struct.hda_codec* %34, i32 %35, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = call i32 @codec_dbg(%struct.hda_codec* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %33
  %50 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %51 = call i32 @codec_dbg(%struct.hda_codec* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %45, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @chipio_read(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
