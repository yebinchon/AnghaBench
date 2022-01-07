; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs47l35 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.madera* }
%struct.madera = type { i32, i32, i32 }

@CS47L35_MONO_OUTPUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@madera_adsp_rate_controls = common dso_local global i32 0, align 4
@CS47L35_NUM_ADSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs47l35_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l35_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs47l35*, align 8
  %5 = alloca %struct.madera*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.cs47l35* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs47l35* %9, %struct.cs47l35** %4, align 8
  %10 = load %struct.cs47l35*, %struct.cs47l35** %4, align 8
  %11 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.madera*, %struct.madera** %12, align 8
  store %struct.madera* %13, %struct.madera** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.madera*, %struct.madera** %5, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %14, i32 %17)
  %19 = load %struct.madera*, %struct.madera** %5, align 8
  %20 = getelementptr inbounds %struct.madera, %struct.madera* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = call i32 @snd_soc_component_get_dapm(%struct.snd_soc_component* %22)
  %24 = load %struct.madera*, %struct.madera** %5, align 8
  %25 = getelementptr inbounds %struct.madera, %struct.madera* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.madera*, %struct.madera** %5, align 8
  %27 = getelementptr inbounds %struct.madera, %struct.madera* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = call i32 @madera_init_inputs(%struct.snd_soc_component* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %1
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @CS47L35_MONO_OUTPUTS, align 4
  %38 = call i32 @madera_init_outputs(%struct.snd_soc_component* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %35
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @madera_adsp_rate_controls, align 4
  %48 = load i32, i32* @CS47L35_NUM_ADSP, align 4
  %49 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %73

54:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CS47L35_NUM_ADSP, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.cs47l35*, %struct.cs47l35** %4, align 8
  %61 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = call i32 @wm_adsp2_component_probe(i32* %66, %struct.snd_soc_component* %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %55

72:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %52, %41, %33
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.cs47l35* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @madera_init_inputs(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_init_outputs(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wm_adsp2_component_probe(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
