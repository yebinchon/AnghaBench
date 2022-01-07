; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hpin_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hpin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32 }

@hpin_prepmd_seq = common dso_local global i32 0, align 4
@hpin_postpmu_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid HPIN event = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs43130_hpin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_hpin_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %16, label %33 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %3
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @hpin_prepmd_seq, align 4
  %22 = load i32, i32* @hpin_prepmd_seq, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @regmap_multi_reg_write(i32 %20, i32 %21, i32 %23)
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %27 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @hpin_postpmu_seq, align 4
  %30 = load i32, i32* @hpin_postpmu_seq, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @regmap_multi_reg_write(i32 %28, i32 %29, i32 %31)
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %25, %17
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
