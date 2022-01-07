; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_sdin_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_sdin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l34_private = type { i32, i32 }

@CS35L34_PWRCTL3 = common dso_local global i32 0, align 4
@CS35L34_PDN_TDM = common dso_local global i32 0, align 4
@CS35L34_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L34_PDN_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot set Power bits %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l34_sdin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_sdin_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l34_private*, align 8
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
  %16 = call %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs35l34_private* %16, %struct.cs35l34_private** %9, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %69 [
    i32 128, label %18
    i32 129, label %48
  ]

18:                                               ; preds = %3
  %19 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %20 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %25 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CS35L34_PWRCTL3, align 4
  %28 = load i32, i32* @CS35L34_PDN_TDM, align 4
  %29 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %32 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CS35L34_PWRCTL1, align 4
  %35 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %73

46:                                               ; preds = %30
  %47 = call i32 @usleep_range(i32 5000, i32 5100)
  br label %72

48:                                               ; preds = %3
  %49 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %50 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %55 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CS35L34_PWRCTL3, align 4
  %58 = load i32, i32* @CS35L34_PDN_TDM, align 4
  %59 = load i32, i32* @CS35L34_PDN_TDM, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %63 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CS35L34_PWRCTL1, align 4
  %66 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %67 = load i32, i32* @CS35L34_PDN_ALL, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %61, %46
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
