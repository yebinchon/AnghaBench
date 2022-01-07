; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cros_ec_codec.c_cros_ec_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EC_CODEC_SAMPLE_DEPTH_16 = common dso_local global i32 0, align 4
@EC_CODEC_SAMPLE_DEPTH_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cros_ec_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 48000
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 128, label %29
  ]

25:                                               ; preds = %22
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @EC_CODEC_SAMPLE_DEPTH_16, align 4
  %28 = call i32 @set_i2s_sample_depth(%struct.snd_soc_component* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* @EC_CODEC_SAMPLE_DEPTH_24, align 4
  %32 = call i32 @set_i2s_sample_depth(%struct.snd_soc_component* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %36
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @set_i2s_bclk(%struct.snd_soc_component* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %39, %33, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @set_i2s_sample_depth(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @set_i2s_bclk(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
