; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5668_DA_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5668_PLL_TRACK_2 = common dso_local global i32 0, align 4
@RT5668_FILTER_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5668_FILTER_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5668_AD_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5668_PLL_TRACK_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5668_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %3, %3, %3
  br label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RT5668_DA_STEREO1_FILTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = load i32, i32* @RT5668_PLL_TRACK_2, align 4
  %21 = load i32, i32* @RT5668_FILTER_CLK_SEL_MASK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RT5668_FILTER_CLK_SEL_SFT, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RT5668_AD_STEREO1_FILTER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = load i32, i32* @RT5668_PLL_TRACK_3, align 4
  %34 = load i32, i32* @RT5668_FILTER_CLK_SEL_MASK, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RT5668_FILTER_CLK_SEL_SFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %10
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
