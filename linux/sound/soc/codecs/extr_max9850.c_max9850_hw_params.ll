; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9850_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX9850_CLOCK = common dso_local global i32 0, align 4
@MAX9850_LRCLK_MSB = common dso_local global i32 0, align 4
@MAX9850_LRCLK_LSB = common dso_local global i32 0, align 4
@MAX9850_DIGITAL_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max9850_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9850_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max9850_priv*, align 8
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
  %17 = call %struct.max9850_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.max9850_priv* %17, %struct.max9850_priv** %9, align 8
  %18 = load %struct.max9850_priv*, %struct.max9850_priv** %9, align 8
  %19 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @MAX9850_CLOCK, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  %29 = ashr i32 %28, 2
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  store i32 4194304, i32* %10, align 4
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @params_rate(%struct.snd_pcm_hw_params* %31)
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.max9850_priv*, %struct.max9850_priv** %9, align 8
  %40 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @do_div(i32 %38, i32 %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = load i32, i32* @MAX9850_LRCLK_MSB, align 4
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 127
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load i32, i32* @MAX9850_LRCLK_LSB, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  %53 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %52)
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_width(%struct.snd_pcm_hw_params* %54)
  switch i32 %55, label %59 [
    i32 16, label %56
    i32 20, label %57
    i32 24, label %58
  ]

56:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %62

57:                                               ; preds = %25
  store i32 2, i32* %12, align 4
  br label %62

58:                                               ; preds = %25
  store i32 3, i32* %12, align 4
  br label %62

59:                                               ; preds = %25
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %58, %57, %56
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %64 = load i32, i32* @MAX9850_DIGITAL_AUDIO, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 3, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %59, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.max9850_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
