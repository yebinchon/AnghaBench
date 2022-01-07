; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4641_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error: unsupported fs=%d\0A\00", align 1
@AK4641_MODE2 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ak4641_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4641_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ak4641_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.ak4641_priv* %17, %struct.ak4641_priv** %9, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_rate(%struct.snd_pcm_hw_params* %18)
  store i32 %19, i32* %10, align 4
  store i32 256, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.ak4641_priv*, %struct.ak4641_priv** %9, align 8
  %24 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %61

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %36 [
    i32 1024, label %33
    i32 512, label %34
    i32 256, label %35
  ]

33:                                               ; preds = %31
  store i32 64, i32* %12, align 4
  br label %44

34:                                               ; preds = %31
  store i32 32, i32* %12, align 4
  br label %44

35:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %44

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %35, %34, %33
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = load i32, i32* @AK4641_MODE2, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 96, i32 %47)
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ak4641_priv*, %struct.ak4641_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %59 = call i32 @ak4641_set_deemph(%struct.snd_soc_component* %58)
  br label %60

60:                                               ; preds = %54, %44
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %36, %28
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ak4641_set_deemph(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
