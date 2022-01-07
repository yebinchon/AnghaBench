; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_component_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_component_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@CS35L32_MCLK_RATIO = common dso_local global i32 0, align 4
@CS35L32_MCLK_DIV2_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS35L32_CLK_CTL = common dso_local global i32 0, align 4
@CS35L32_MCLK_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs35l32_component_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l32_component_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  switch i32 %13, label %23 [
    i32 6000000, label %14
    i32 12000000, label %16
    i32 6144000, label %20
    i32 12288000, label %21
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* @CS35L32_MCLK_RATIO, align 4
  store i32 %15, i32* %12, align 4
  br label %26

16:                                               ; preds = %5
  %17 = load i32, i32* @CS35L32_MCLK_DIV2_MASK, align 4
  %18 = load i32, i32* @CS35L32_MCLK_RATIO, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  br label %26

20:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @CS35L32_MCLK_DIV2_MASK, align 4
  store i32 %22, i32* %12, align 4
  br label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %21, %20, %16, %14
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %28 = load i32, i32* @CS35L32_CLK_CTL, align 4
  %29 = load i32, i32* @CS35L32_MCLK_DIV2_MASK, align 4
  %30 = load i32, i32* @CS35L32_MCLK_RATIO_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
