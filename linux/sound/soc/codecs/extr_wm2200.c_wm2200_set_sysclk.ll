; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm2200_priv = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown clock %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid source %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid clock rate: %d\0A\00", align 1
@WM2200_CLOCKING_3 = common dso_local global i32 0, align 4
@WM2200_SYSCLK_FREQ_MASK = common dso_local global i32 0, align 4
@WM2200_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@WM2200_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm2200_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wm2200_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm2200_priv* %15, %struct.wm2200_priv** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %18 [
    i32 128, label %17
  ]

17:                                               ; preds = %5
  br label %26

18:                                               ; preds = %5
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 129, label %28
    i32 131, label %28
    i32 132, label %28
  ]

28:                                               ; preds = %26, %26, %26, %26
  br label %37

29:                                               ; preds = %26
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %40 [
    i32 22579200, label %39
    i32 24576000, label %39
  ]

39:                                               ; preds = %37, %37
  store i32 2, i32* %13, align 4
  br label %48

40:                                               ; preds = %37
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = load i32, i32* @WM2200_CLOCKING_3, align 4
  %51 = load i32, i32* @WM2200_SYSCLK_FREQ_MASK, align 4
  %52 = load i32, i32* @WM2200_SYSCLK_SRC_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @WM2200_SYSCLK_FREQ_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %53, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.wm2200_priv*, %struct.wm2200_priv** %12, align 8
  %62 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %48, %40, %29, %18
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
