; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dvfs_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dvfs_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to boost DCVDD: %d\0A\00", align 1
@ARIZONA_DYNAMIC_FREQUENCY_SCALING_1 = common dso_local global i32 0, align 4
@ARIZONA_SUBSYS_MAX_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable subsys max: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @arizona_dvfs_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_dvfs_enable(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.arizona_priv*, align 8
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.arizona_priv* %8, %struct.arizona_priv** %4, align 8
  %9 = load %struct.arizona_priv*, %struct.arizona_priv** %4, align 8
  %10 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %9, i32 0, i32 0
  %11 = load %struct.arizona*, %struct.arizona** %10, align 8
  store %struct.arizona* %11, %struct.arizona** %5, align 8
  %12 = load %struct.arizona*, %struct.arizona** %5, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_set_voltage(i32 %14, i32 1800000, i32 1800000)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %1
  %26 = load %struct.arizona*, %struct.arizona** %5, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ARIZONA_DYNAMIC_FREQUENCY_SCALING_1, align 4
  %30 = load i32, i32* @ARIZONA_SUBSYS_MAX_FREQ, align 4
  %31 = load i32, i32* @ARIZONA_SUBSYS_MAX_FREQ, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.arizona*, %struct.arizona** %5, align 8
  %42 = getelementptr inbounds %struct.arizona, %struct.arizona* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_set_voltage(i32 %43, i32 1200000, i32 1800000)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %35, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
