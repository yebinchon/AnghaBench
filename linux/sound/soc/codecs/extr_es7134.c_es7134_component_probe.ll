; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7134.c_es7134_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7134.c_es7134_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.es7134_data = type { %struct.es7134_chip* }
%struct.es7134_chip = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to add extra widgets\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to add extra routes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @es7134_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7134_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.es7134_data*, align 8
  %6 = alloca %struct.es7134_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.es7134_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.es7134_data* %11, %struct.es7134_data** %5, align 8
  %12 = load %struct.es7134_data*, %struct.es7134_data** %5, align 8
  %13 = getelementptr inbounds %struct.es7134_data, %struct.es7134_data* %12, i32 0, i32 0
  %14 = load %struct.es7134_chip*, %struct.es7134_chip** %13, align 8
  store %struct.es7134_chip* %14, %struct.es7134_chip** %6, align 8
  %15 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %16 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %21 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %22 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %25 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %20, i32 %23, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %39 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %44 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %45 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.es7134_chip*, %struct.es7134_chip** %6, align 8
  %48 = getelementptr inbounds %struct.es7134_chip, %struct.es7134_chip* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %43, i32 %46, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %37
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %53, %30
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.es7134_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
