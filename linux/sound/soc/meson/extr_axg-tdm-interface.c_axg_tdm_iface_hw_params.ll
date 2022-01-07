; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_tdm_iface = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bad slot number for format: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported dai format\0A\00", align 1
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_tdm_iface_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.axg_tdm_iface*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.axg_tdm_iface* %11, %struct.axg_tdm_iface** %8, align 8
  %12 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %13 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %34 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 132, label %33
    i32 131, label %33
  ]

17:                                               ; preds = %3, %3, %3
  %18 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %19 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %27 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %17
  br label %41

33:                                               ; preds = %3, %3
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %33, %32
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %45 = call i32 @axg_tdm_iface_set_stream(%struct.snd_pcm_substream* %42, %struct.snd_pcm_hw_params* %43, %struct.snd_soc_dai* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %41
  %51 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %52 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @axg_tdm_iface_set_sclk(%struct.snd_soc_dai* %58, %struct.snd_pcm_hw_params* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %57
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %68 = call i32 @axg_tdm_iface_set_lrclk(%struct.snd_soc_dai* %66, %struct.snd_pcm_hw_params* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %50
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71, %63, %48, %34, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @axg_tdm_iface_set_stream(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*) #1

declare dso_local i32 @axg_tdm_iface_set_sclk(%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @axg_tdm_iface_set_lrclk(%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
