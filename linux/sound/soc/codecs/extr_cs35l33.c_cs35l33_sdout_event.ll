; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_sdout_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_sdout_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i32 }

@CS35L33_SDOUT_3ST_I2S = common dso_local global i32 0, align 4
@CS35L33_PDN_TDM = common dso_local global i32 0, align 4
@CS35L33_SDOUT_3ST_TDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SDOUT turned on\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SDOUT turned off\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@CS35L33_PWRCTL2 = common dso_local global i32 0, align 4
@CS35L33_CLK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l33_sdout_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_sdout_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l33_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.cs35l33_private* %19, %struct.cs35l33_private** %9, align 8
  %20 = load i32, i32* @CS35L33_SDOUT_3ST_I2S, align 4
  %21 = load i32, i32* @CS35L33_PDN_TDM, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @CS35L33_SDOUT_3ST_TDM, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %49 [
    i32 128, label %25
    i32 129, label %40
  ]

25:                                               ; preds = %3
  %26 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %27 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CS35L33_SDOUT_3ST_I2S, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @CS35L33_PDN_TDM, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @CS35L33_SDOUT_3ST_TDM, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %55

40:                                               ; preds = %3
  %41 = load i32, i32* @CS35L33_SDOUT_3ST_I2S, align 4
  %42 = load i32, i32* @CS35L33_PDN_TDM, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @CS35L33_SDOUT_3ST_TDM, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 0, i32* %4, align 4
  br label %70

55:                                               ; preds = %40, %35
  %56 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %57 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CS35L33_PWRCTL2, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %64 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %55, %49
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
