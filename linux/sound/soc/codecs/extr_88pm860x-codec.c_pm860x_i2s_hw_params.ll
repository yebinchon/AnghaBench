; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@PCM_INF2_18WL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM860X_I2S_IFACE_2 = common dso_local global i32 0, align 4
@PM860X_I2S_IFACE_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pm860x_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i8, align 1
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_width(%struct.snd_pcm_hw_params* %13)
  switch i32 %14, label %19 [
    i32 16, label %15
    i32 18, label %16
  ]

15:                                               ; preds = %3
  store i8 0, i8* %9, align 1
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @PCM_INF2_18WL, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %16, %15
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = load i32, i32* @PM860X_I2S_IFACE_2, align 4
  %25 = load i32, i32* @PCM_INF2_18WL, align 4
  %26 = load i8, i8* %9, align 1
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i8 zeroext %26)
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_rate(%struct.snd_pcm_hw_params* %28)
  switch i32 %29, label %37 [
    i32 8000, label %30
    i32 11025, label %31
    i32 16000, label %32
    i32 22050, label %33
    i32 32000, label %34
    i32 44100, label %35
    i32 48000, label %36
  ]

30:                                               ; preds = %22
  store i8 0, i8* %9, align 1
  br label %40

31:                                               ; preds = %22
  store i8 1, i8* %9, align 1
  br label %40

32:                                               ; preds = %22
  store i8 3, i8* %9, align 1
  br label %40

33:                                               ; preds = %22
  store i8 4, i8* %9, align 1
  br label %40

34:                                               ; preds = %22
  store i8 6, i8* %9, align 1
  br label %40

35:                                               ; preds = %22
  store i8 7, i8* %9, align 1
  br label %40

36:                                               ; preds = %22
  store i8 8, i8* %9, align 1
  br label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %36, %35, %34, %33, %32, %31, %30
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @PM860X_I2S_IFACE_4, align 4
  %43 = load i8, i8* %9, align 1
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 15, i8 zeroext %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %37, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i8 zeroext) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
