; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_rk_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_rk_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't set cpu clock %d\0A\00", align 1
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't set codec clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @rk_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %7, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %8, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %25 [
    i32 8000, label %22
    i32 16000, label %22
    i32 24000, label %22
    i32 32000, label %22
    i32 48000, label %22
    i32 64000, label %22
    i32 96000, label %22
    i32 192000, label %23
    i32 11025, label %24
    i32 22050, label %24
    i32 44100, label %24
    i32 88200, label %24
  ]

22:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 12288000, i32* %10, align 4
  br label %28

23:                                               ; preds = %2
  store i32 24576000, i32* %10, align 4
  br label %28

24:                                               ; preds = %2, %2, %2, %2
  store i32 11289600, i32* %10, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %24, %23, %22
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %32 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %29, i32 0, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ENOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %35, %28
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %51 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %48, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ENOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %59, %40, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
