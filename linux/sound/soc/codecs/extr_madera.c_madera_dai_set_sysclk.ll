; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.TYPE_6__*, i64, %struct.snd_soc_component* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.madera_priv = type { %struct.madera_dai_priv* }
%struct.madera_dai_priv = type { i32 }
%struct.snd_soc_dapm_route = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Illegal DAI clock id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't change clock on active DAI %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Setting AIF%d to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ASYNCCLK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @madera_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.snd_soc_dapm_context*, align 8
  %12 = alloca %struct.madera_priv*, align 8
  %13 = alloca %struct.madera_dai_priv*, align 8
  %14 = alloca [2 x %struct.snd_soc_dapm_route], align 16
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %10, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %20 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %19)
  store %struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_context** %11, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %22 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.madera_priv* %22, %struct.madera_priv** %12, align 8
  %23 = load %struct.madera_priv*, %struct.madera_priv** %12, align 8
  %24 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %23, i32 0, i32 0
  %25 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %24, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %25, i64 %30
  store %struct.madera_dai_priv* %31, %struct.madera_dai_priv** %13, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @madera_is_syncclk(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %5, align 4
  br label %120

43:                                               ; preds = %4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %13, align 8
  %46 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @madera_is_syncclk(i32 %47)
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %120

51:                                               ; preds = %43
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %120

66:                                               ; preds = %51
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %77 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %76)
  %78 = bitcast [2 x %struct.snd_soc_dapm_route]* %14 to %struct.snd_soc_dapm_route**
  %79 = call i32 @memset(%struct.snd_soc_dapm_route** %78, i32 0, i32 32)
  %80 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %87 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 1
  %95 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %97 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %97, align 16
  %98 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 1
  %99 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %99, align 16
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %66
  %103 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %104 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %105 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %106 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %105)
  %107 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %103, %struct.snd_soc_dapm_route* %104, i32 %106)
  br label %114

108:                                              ; preds = %66
  %109 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %110 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %111 = getelementptr inbounds [2 x %struct.snd_soc_dapm_route], [2 x %struct.snd_soc_dapm_route]* %14, i64 0, i64 0
  %112 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %111)
  %113 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %109, %struct.snd_soc_dapm_route* %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %13, align 8
  %117 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %119 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %118)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %114, %56, %50, %36
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_is_syncclk(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

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
