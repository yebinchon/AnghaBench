; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32 }

@pop_free_seq = common dso_local global i32 0, align 4
@pop_free_seq2 = common dso_local global i32 0, align 4
@CS43130_DXD1 = common dso_local global i32 0, align 4
@dac_postpmu_seq = common dso_local global i32 0, align 4
@CS43130_DXD12 = common dso_local global i32 0, align 4
@CS43130_DXD13 = common dso_local global i32 0, align 4
@dac_postpmd_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid DAC event = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs43130_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs43130_private*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs43130_private* %15, %struct.cs43130_private** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %88 [
    i32 128, label %17
    i32 129, label %38
    i32 130, label %75
  ]

17:                                               ; preds = %3
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %37 [
    i32 134, label %21
    i32 131, label %21
    i32 133, label %29
    i32 132, label %29
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @pop_free_seq, align 4
  %26 = load i32, i32* @pop_free_seq, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @regmap_multi_reg_write(i32 %24, i32 %25, i32 %27)
  br label %37

29:                                               ; preds = %17, %17
  %30 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %31 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @pop_free_seq2, align 4
  %34 = load i32, i32* @pop_free_seq2, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @regmap_multi_reg_write(i32 %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %17, %29, %21
  br label %96

38:                                               ; preds = %3
  %39 = call i32 @usleep_range(i32 10000, i32 10050)
  %40 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %41 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CS43130_DXD1, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 153)
  %45 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %46 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %69 [
    i32 134, label %48
    i32 131, label %48
    i32 133, label %62
    i32 132, label %62
  ]

48:                                               ; preds = %38, %38
  %49 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %50 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @dac_postpmu_seq, align 4
  %53 = load i32, i32* @dac_postpmu_seq, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @regmap_multi_reg_write(i32 %51, i32 %52, i32 %54)
  %56 = call i32 @msleep(i32 1000)
  %57 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %58 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CS43130_DXD12, align 4
  %61 = call i32 @regmap_write(i32 %59, i32 %60, i32 0)
  br label %69

62:                                               ; preds = %38, %38
  %63 = call i32 @usleep_range(i32 12000, i32 12010)
  %64 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %65 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CS43130_DXD13, align 4
  %68 = call i32 @regmap_write(i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %38, %62, %48
  %70 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %71 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CS43130_DXD1, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 0)
  br label %96

75:                                               ; preds = %3
  %76 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %77 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %87 [
    i32 134, label %79
    i32 131, label %79
  ]

79:                                               ; preds = %75, %75
  %80 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %81 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @dac_postpmd_seq, align 4
  %84 = load i32, i32* @dac_postpmd_seq, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = call i32 @regmap_multi_reg_write(i32 %82, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %75, %79
  br label %96

88:                                               ; preds = %3
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %87, %69, %37
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
