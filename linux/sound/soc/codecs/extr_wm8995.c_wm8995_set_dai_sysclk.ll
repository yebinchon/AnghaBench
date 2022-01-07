; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"AIF%d using MCLK1 at %uHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"AIF%d using MCLK2 at %uHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AIF%d using FLL1\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AIF%d using FLL2\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown clock source %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8995_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8995_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8995_priv* %16, %struct.wm8995_priv** %11, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %21 [
    i32 0, label %20
    i32 1, label %20
  ]

20:                                               ; preds = %4, %4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %118

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %107 [
    i32 130, label %26
    i32 129, label %49
    i32 132, label %72
    i32 131, label %89
    i32 128, label %106
  ]

26:                                               ; preds = %24
  %27 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %28 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32 130, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %37 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %115

49:                                               ; preds = %24
  %50 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %51 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 129, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %60 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %115

72:                                               ; preds = %24
  %73 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %74 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 132, i32* %80, align 4
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %115

89:                                               ; preds = %24
  %90 = load %struct.wm8995_priv*, %struct.wm8995_priv** %11, align 8
  %91 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 131, i32* %97, align 4
  %98 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %115

106:                                              ; preds = %24
  br label %107

107:                                              ; preds = %24, %106
  %108 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %109 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %118

115:                                              ; preds = %89, %72, %49, %26
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %117 = call i32 @configure_clock(%struct.snd_soc_component* %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %107, %21
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
