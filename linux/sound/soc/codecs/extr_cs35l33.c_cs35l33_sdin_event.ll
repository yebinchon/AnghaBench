; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_sdin_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_sdin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i32, i32 }

@CS35L33_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L33_PDN_BST = common dso_local global i32 0, align 4
@CS35L33_PDN_TDM = common dso_local global i32 0, align 4
@CS35L33_PWRCTL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"BST turned on\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SDIN turned on\0A\00", align 1
@CS35L33_CLASSD_CTL = common dso_local global i32 0, align 4
@CS35L33_AMP_CAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Amp calibration started\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"BST and SDIN turned off\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l33_sdin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_sdin_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.cs35l33_private*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs35l33_private* %15, %struct.cs35l33_private** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %87 [
    i32 128, label %17
    i32 129, label %44
    i32 130, label %67
  ]

17:                                               ; preds = %3
  %18 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %19 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CS35L33_PWRCTL1, align 4
  %22 = load i32, i32* @CS35L33_PDN_BST, align 4
  %23 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %25 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @CS35L33_PDN_TDM, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %34 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CS35L33_PWRCTL2, align 4
  %37 = load i32, i32* @CS35L33_PDN_TDM, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %93

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %50 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %44
  %54 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %55 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CS35L33_CLASSD_CTL, align 4
  %58 = load i32, i32* @CS35L33_AMP_CAL, align 4
  %59 = load i32, i32* @CS35L33_AMP_CAL, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %66

66:                                               ; preds = %53, %44
  br label %93

67:                                               ; preds = %3
  %68 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %69 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CS35L33_PWRCTL2, align 4
  %72 = load i32, i32* @CS35L33_PDN_TDM, align 4
  %73 = load i32, i32* @CS35L33_PDN_TDM, align 4
  %74 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = call i32 @usleep_range(i32 4000, i32 4100)
  %76 = load %struct.cs35l33_private*, %struct.cs35l33_private** %8, align 8
  %77 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CS35L33_PWRCTL1, align 4
  %80 = load i32, i32* @CS35L33_PDN_BST, align 4
  %81 = load i32, i32* @CS35L33_PDN_BST, align 4
  %82 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %93

87:                                               ; preds = %3
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %67, %66, %31
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
