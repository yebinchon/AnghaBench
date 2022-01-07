; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8804_priv = type { i32 }

@WM8804_PLL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown clock divider: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8804_set_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8804_set_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8804_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 128, label %21
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @WM8804_PLL5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 3
  %19 = shl i32 %18, 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 48, i32 %19)
  br label %35

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = call %struct.wm8804_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.wm8804_priv* %23, %struct.wm8804_priv** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wm8804_priv*, %struct.wm8804_priv** %9, align 8
  %26 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local %struct.wm8804_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
