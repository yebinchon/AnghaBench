; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_inno_rk3036.c_rk3036_codec_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_inno_rk3036.c_rk3036_codec_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@INNO_R02_VWL_16BIT = common dso_local global i32 0, align 4
@INNO_R02_VWL_20BIT = common dso_local global i32 0, align 4
@INNO_R02_VWL_24BIT = common dso_local global i32 0, align 4
@INNO_R02_VWL_32BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INNO_R02_LRCP_NORMAL = common dso_local global i32 0, align 4
@INNO_R03_FWL_32BIT = common dso_local global i32 0, align 4
@INNO_R03_DACR_WORK = common dso_local global i32 0, align 4
@INNO_R02 = common dso_local global i32 0, align 4
@INNO_R02_LRCP_MSK = common dso_local global i32 0, align 4
@INNO_R02_VWL_MSK = common dso_local global i32 0, align 4
@INNO_R03 = common dso_local global i32 0, align 4
@INNO_R03_DACR_MSK = common dso_local global i32 0, align 4
@INNO_R03_FWL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rk3036_codec_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3036_codec_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_format(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %32 [
    i32 131, label %16
    i32 130, label %20
    i32 129, label %24
    i32 128, label %28
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @INNO_R02_VWL_16BIT, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i32, i32* @INNO_R02_VWL_20BIT, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @INNO_R02_VWL_24BIT, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @INNO_R02_VWL_32BIT, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %28, %24, %20, %16
  %36 = load i32, i32* @INNO_R02_LRCP_NORMAL, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @INNO_R03_FWL_32BIT, align 4
  %40 = load i32, i32* @INNO_R03_DACR_WORK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i32, i32* @INNO_R02, align 4
  %46 = load i32, i32* @INNO_R02_LRCP_MSK, align 4
  %47 = load i32, i32* @INNO_R02_VWL_MSK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = load i32, i32* @INNO_R03, align 4
  %53 = load i32, i32* @INNO_R03_DACR_MSK, align 4
  %54 = load i32, i32* @INNO_R03_FWL_MSK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %35, %32
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
