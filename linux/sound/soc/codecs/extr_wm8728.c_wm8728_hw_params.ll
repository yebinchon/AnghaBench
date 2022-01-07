; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8728.c_wm8728_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8728.c_wm8728_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8728_DACCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8728_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8728_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %14 = load i32, i32* @WM8728_DACCTL, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, -25
  store i32 %17, i32* %9, align 4
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_width(%struct.snd_pcm_hw_params* %18)
  switch i32 %19, label %27 [
    i32 16, label %20
    i32 20, label %21
    i32 24, label %24
  ]

20:                                               ; preds = %3
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, 16
  store i32 %23, i32* %9, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, 8
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %24, %21, %20
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = load i32, i32* @WM8728_DACCTL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
