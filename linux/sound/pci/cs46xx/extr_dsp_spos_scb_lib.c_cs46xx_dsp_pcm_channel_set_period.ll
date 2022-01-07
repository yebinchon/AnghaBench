; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_channel_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_channel_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dsp_pcm_channel_descriptor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_RQ_C1_SOURCE_SIZE_MASK = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD1024 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD512 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD256 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD128 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD64 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD32 = common dso_local global i32 0, align 4
@DMA_RQ_C1_SOURCE_MOD16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"period size (%d) not supported by HW\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_pcm_channel_set_period(%struct.snd_cs46xx* %0, %struct.dsp_pcm_channel_descriptor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca %struct.dsp_pcm_channel_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store %struct.dsp_pcm_channel_descriptor* %1, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %10 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %6, align 8
  %11 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 2
  %16 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %9, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @DMA_RQ_C1_SOURCE_SIZE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %50 [
    i32 2048, label %22
    i32 1024, label %26
    i32 512, label %30
    i32 256, label %34
    i32 128, label %38
    i32 64, label %42
    i32 32, label %46
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD1024, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD512, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %60

30:                                               ; preds = %3
  %31 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD256, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %60

34:                                               ; preds = %3
  %35 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD128, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %60

38:                                               ; preds = %3
  %39 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD64, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %60

42:                                               ; preds = %3
  %43 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD32, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %60

46:                                               ; preds = %3
  %47 = load i32, i32* @DMA_RQ_C1_SOURCE_MOD16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %60

50:                                               ; preds = %3
  %51 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %52 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %46, %42, %38, %34, %30, %26, %22
  %61 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %62 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %6, align 8
  %63 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %61, i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %50
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
