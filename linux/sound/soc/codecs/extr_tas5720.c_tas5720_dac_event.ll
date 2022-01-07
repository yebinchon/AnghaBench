; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tas5720_data = type { i32, i64 }

@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@TAS5720_POWER_CTRL_REG = common dso_local global i32 0, align 4
@TAS5720_SDZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error waking component: %d\0A\00", align 1
@TAS5720_FAULT_CHECK_INTERVAL = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error shutting down component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @tas5720_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5720_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tas5720_data*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.tas5720_data* %16, %struct.tas5720_data** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = load i32, i32* @TAS5720_POWER_CTRL_REG, align 4
  %24 = load i32, i32* @TAS5720_SDZ, align 4
  %25 = load i32, i32* @TAS5720_SDZ, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %21
  %37 = call i32 @msleep(i32 25)
  %38 = load %struct.tas5720_data*, %struct.tas5720_data** %9, align 8
  %39 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.tas5720_data*, %struct.tas5720_data** %9, align 8
  %41 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %40, i32 0, i32 0
  %42 = load i32, i32* @TAS5720_FAULT_CHECK_INTERVAL, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i32 @schedule_delayed_work(i32* %41, i32 %43)
  br label %69

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.tas5720_data*, %struct.tas5720_data** %9, align 8
  %52 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %51, i32 0, i32 0
  %53 = call i32 @cancel_delayed_work_sync(i32* %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = load i32, i32* @TAS5720_POWER_CTRL_REG, align 4
  %56 = load i32, i32* @TAS5720_SDZ, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68, %36
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %60, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.tas5720_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
