; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8580_priv = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"Unknown DAI driver ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown clock %d\0A\00", align 1
@WM8580_CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8580_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8580_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %10, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %20 = call %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.wm8580_priv* %20, %struct.wm8580_priv** %11, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %4
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %32

27:                                               ; preds = %4
  store i32 12, i32* %14, align 4
  store i32 2, i32* %15, align 4
  br label %32

28:                                               ; preds = %4
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %86

32:                                               ; preds = %27, %26
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %56 [
    i32 133, label %34
    i32 131, label %47
    i32 130, label %50
    i32 132, label %53
  ]

34:                                               ; preds = %32
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %86

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %64

47:                                               ; preds = %32
  %48 = load i32, i32* %15, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %13, align 4
  br label %64

50:                                               ; preds = %32
  %51 = load i32, i32* %15, align 4
  %52 = shl i32 2, %51
  store i32 %52, i32* %13, align 4
  br label %64

53:                                               ; preds = %32
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 3, %54
  store i32 %55, i32* %13, align 4
  br label %64

56:                                               ; preds = %32
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %53, %50, %47, %44
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.wm8580_priv*, %struct.wm8580_priv** %11, align 8
  %67 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32 %65, i32* %75, align 4
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %77 = load i32, i32* @WM8580_CLKSEL, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %64
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %83, %56, %41, %28
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
