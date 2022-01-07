; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8741_priv = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"wm8741_set_dai_sysclk info: freq=%dHz\0A\00", align 1
@constraints_11289 = common dso_local global i32 0, align 4
@constraints_12288 = common dso_local global i32 0, align 4
@constraints_16384 = common dso_local global i32 0, align 4
@constraints_16934 = common dso_local global i32 0, align 4
@constraints_18432 = common dso_local global i32 0, align 4
@constraints_22579 = common dso_local global i32 0, align 4
@constraints_24576 = common dso_local global i32 0, align 4
@constraints_36864 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8741_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8741_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8741_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8741_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8741_priv* %16, %struct.wm8741_priv** %11, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %50 [
    i32 0, label %23
    i32 11289600, label %26
    i32 12288000, label %29
    i32 16384000, label %32
    i32 16934400, label %35
    i32 18432000, label %38
    i32 22579200, label %41
    i32 33868800, label %41
    i32 24576000, label %44
    i32 36864000, label %47
  ]

23:                                               ; preds = %4
  %24 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %25 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %28 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %27, i32 0, i32 1
  store i32* @constraints_11289, i32** %28, align 8
  br label %53

29:                                               ; preds = %4
  %30 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %31 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %30, i32 0, i32 1
  store i32* @constraints_12288, i32** %31, align 8
  br label %53

32:                                               ; preds = %4
  %33 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %34 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %33, i32 0, i32 1
  store i32* @constraints_16384, i32** %34, align 8
  br label %53

35:                                               ; preds = %4
  %36 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %37 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %36, i32 0, i32 1
  store i32* @constraints_16934, i32** %37, align 8
  br label %53

38:                                               ; preds = %4
  %39 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %40 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %39, i32 0, i32 1
  store i32* @constraints_18432, i32** %40, align 8
  br label %53

41:                                               ; preds = %4, %4
  %42 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %43 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %42, i32 0, i32 1
  store i32* @constraints_22579, i32** %43, align 8
  br label %53

44:                                               ; preds = %4
  %45 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %46 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %45, i32 0, i32 1
  store i32* @constraints_24576, i32** %46, align 8
  br label %53

47:                                               ; preds = %4
  %48 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %49 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %48, i32 0, i32 1
  store i32* @constraints_36864, i32** %49, align 8
  br label %53

50:                                               ; preds = %4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.wm8741_priv*, %struct.wm8741_priv** %11, align 8
  %56 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.wm8741_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
