; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@PCM_INF2_18WL = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@PM860X_PCM_IFACE_2 = common dso_local global i32 0, align 4
@PM860X_PCM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pm860x_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_width(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %31 [
    i32 16, label %16
    i32 18, label %24
  ]

16:                                               ; preds = %3
  %17 = load i8, i8* @PCM_INF2_18WL, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1
  br label %34

24:                                               ; preds = %3
  %25 = load i8, i8* @PCM_INF2_18WL, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %9, align 1
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %24, %16
  %35 = load i8, i8* @PCM_INF2_18WL, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %10, align 1
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @PM860X_PCM_IFACE_2, align 4
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %9, align 1
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %44, i8 zeroext %45)
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_rate(%struct.snd_pcm_hw_params* %47)
  switch i32 %48, label %53 [
    i32 8000, label %49
    i32 16000, label %50
    i32 32000, label %51
    i32 48000, label %52
  ]

49:                                               ; preds = %34
  store i8 0, i8* %9, align 1
  br label %56

50:                                               ; preds = %34
  store i8 3, i8* %9, align 1
  br label %56

51:                                               ; preds = %34
  store i8 6, i8* %9, align 1
  br label %56

52:                                               ; preds = %34
  store i8 8, i8* %9, align 1
  br label %56

53:                                               ; preds = %34
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %52, %51, %50, %49
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @PM860X_PCM_RATE, align 4
  %59 = load i8, i8* %9, align 1
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 15, i8 zeroext %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %53, %31
  %62 = load i32, i32* %4, align 4
  ret i32 %62
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
