; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_spkrdrv_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_spkrdrv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i32 }

@CS35L33_CLASSD_CTL = common dso_local global i32 0, align 4
@CS35L33_AMP_CAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Amp calibration done\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Amp turned on\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Amp turned off\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l33_spkrdrv_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_spkrdrv_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs35l33_private* %14, %struct.cs35l33_private** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %45 [
    i32 128, label %16
    i32 129, label %40
  ]

16:                                               ; preds = %3
  %17 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %18 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = call i32 @usleep_range(i32 8000, i32 9000)
  %23 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %24 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %26 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS35L33_CLASSD_CTL, align 4
  %29 = load i32, i32* @CS35L33_AMP_CAL, align 4
  %30 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %21, %16
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

40:                                               ; preds = %3
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %40, %35
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
