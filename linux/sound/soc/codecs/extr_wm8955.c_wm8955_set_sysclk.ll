; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8955_priv = type { i32 }

@WM8955_MCLKDIV2 = common dso_local global i32 0, align 4
@WM8955_SAMPLE_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Clock source is %d at %uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8955_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8955_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8955_priv* %17, %struct.wm8955_priv** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %38 [
    i32 128, label %19
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 15000000
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load %struct.wm8955_priv*, %struct.wm8955_priv** %11, align 8
  %26 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @WM8955_MCLKDIV2, align 4
  store i32 %27, i32* %12, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.wm8955_priv*, %struct.wm8955_priv** %11, align 8
  %31 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %34 = load i32, i32* @WM8955_SAMPLE_RATE, align 4
  %35 = load i32, i32* @WM8955_MCLKDIV2, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %32
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
