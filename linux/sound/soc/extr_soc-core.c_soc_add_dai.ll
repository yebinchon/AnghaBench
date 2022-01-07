; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_add_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_add_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, i32*, i32, %struct.snd_soc_dai_driver*, %struct.device*, %struct.snd_soc_component* }
%struct.device = type { i32 }
%struct.snd_soc_component = type { i64, i32, %struct.device* }
%struct.snd_soc_dai_driver = type { i64, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"ASoC: dynamically register DAI %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@null_dai_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ASoC: Registered DAI '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_dai* (%struct.snd_soc_component*, %struct.snd_soc_dai_driver*, i32)* @soc_add_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_dai* @soc_add_dai(%struct.snd_soc_component* %0, %struct.snd_soc_dai_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = call i32* @dev_name(%struct.device* %14)
  %16 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.snd_soc_dai* @kzalloc(i32 48, i32 %17)
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %9, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %20 = icmp eq %struct.snd_soc_dai* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.snd_soc_dai* null, %struct.snd_soc_dai** %4, align 8
  br label %110

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %25
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = call i32* @fmt_single_name(%struct.device* %36, i64* %38)
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %65

42:                                               ; preds = %30, %22
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %45 = call i32* @fmt_multiple_name(%struct.device* %43, %struct.snd_soc_dai_driver* %44)
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %72 = call i32 @kfree(%struct.snd_soc_dai* %71)
  store %struct.snd_soc_dai* null, %struct.snd_soc_dai** %4, align 8
  br label %110

73:                                               ; preds = %65
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 5
  store %struct.snd_soc_component* %74, %struct.snd_soc_component** %76, align 8
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 4
  store %struct.device* %77, %struct.device** %79, align 8
  %80 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 3
  store %struct.snd_soc_dai_driver* %80, %struct.snd_soc_dai_driver** %82, align 8
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 3
  %85 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %84, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %73
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 3
  %92 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %91, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %92, i32 0, i32 1
  store i32* @null_dai_ops, i32** %93, align 8
  br label %94

94:                                               ; preds = %89, %73
  %95 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %95, i32 0, i32 2
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 1
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.device*, %struct.device** %8, align 8
  %105 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %107)
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_soc_dai* %109, %struct.snd_soc_dai** %4, align 8
  br label %110

110:                                              ; preds = %94, %70, %21
  %111 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  ret %struct.snd_soc_dai* %111
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*) #1

declare dso_local i32* @dev_name(%struct.device*) #1

declare dso_local %struct.snd_soc_dai* @kzalloc(i32, i32) #1

declare dso_local i32* @fmt_single_name(%struct.device*, i64*) #1

declare dso_local i32* @fmt_multiple_name(%struct.device*, %struct.snd_soc_dai_driver*) #1

declare dso_local i32 @kfree(%struct.snd_soc_dai*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
