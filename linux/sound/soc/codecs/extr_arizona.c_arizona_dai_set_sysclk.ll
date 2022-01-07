; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.TYPE_6__*, i64, %struct.snd_soc_component* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.arizona_priv = type { %struct.arizona_dai_priv* }
%struct.arizona_dai_priv = type { i32 }
%struct.snd_soc_dapm_route = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't change clock on active DAI %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Setting AIF%d to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @arizona_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.snd_soc_dapm_context*, align 8
  %12 = alloca %struct.arizona_priv*, align 8
  %13 = alloca %struct.arizona_dai_priv*, align 8
  %14 = alloca [2 x %struct.snd_soc_dapm_route], align 16
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 3
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %10, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %19 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %18)
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %11, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %21 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.arizona_priv* %21, %struct.arizona_priv** %12, align 8
  %22 = load %struct.arizona_priv*, %struct.arizona_priv** %12, align 8
  %23 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %22, i32 0, i32 0
  %24 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %23, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %24, i64 %29
  store %struct.arizona_dai_priv* %30, %struct.arizona_dai_priv** %13, align 8
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %33 [
    i32 128, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %4, %4
  br label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %122

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %13, align 8
  %39 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %122

43:                                               ; preds = %36
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %122

58:                                               ; preds = %43
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @arizona_dai_clk_str(i32 %66)
  %68 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %67)
  %69 = bitcast [2 x %struct.snd_soc_dapm_route]* %14 to %struct.snd_soc_dapm_route**
  %70 = call i32 @memset(%struct.snd_soc_dapm_route** %69, i32 0, i32 32)
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %72 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %78 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 1
  %86 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %13, align 8
  %88 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @arizona_dai_clk_str(i32 %89)
  %91 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %92 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 16
  %93 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %13, align 8
  %94 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @arizona_dai_clk_str(i32 %95)
  %97 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 1
  %98 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 16
  %99 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %100 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %101 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %101)
  %103 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %99, %struct.snd_soc_dapm_route* %100, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i8* @arizona_dai_clk_str(i32 %104)
  %106 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %107 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 16
  %108 = load i32, i32* %7, align 4
  %109 = call i8* @arizona_dai_clk_str(i32 %108)
  %110 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 1
  %111 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 16
  %112 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %113 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %114 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %115 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %114)
  %116 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %112, %struct.snd_soc_dapm_route* %113, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %13, align 8
  %119 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %121 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %58, %48, %42, %33
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i8* @arizona_dai_clk_str(i32) #1

declare dso_local i32 @memset(%struct.snd_soc_dapm_route**, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
