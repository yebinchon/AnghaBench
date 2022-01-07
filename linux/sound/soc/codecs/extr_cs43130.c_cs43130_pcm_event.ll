; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pcm_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pcm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32 }

@pcm_seq = common dso_local global i32 0, align 4
@CS43130_PCM_PATH_CTL_1 = common dso_local global i32 0, align 4
@CS43130_MUTE_MASK = common dso_local global i32 0, align 4
@unmute_seq = common dso_local global i32 0, align 4
@mute_seq = common dso_local global i32 0, align 4
@CS43130_MUTE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs43130_pcm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_pcm_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %16, label %78 [
    i32 128, label %17
    i32 130, label %30
    i32 129, label %49
  ]

17:                                               ; preds = %3
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %29 [
    i32 134, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @pcm_seq, align 4
  %26 = load i32, i32* @pcm_seq, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @regmap_multi_reg_write(i32 %24, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %17, %21
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %32 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CS43130_PCM_PATH_CTL_1, align 4
  %35 = load i32, i32* @CS43130_MUTE_MASK, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %38 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 134, label %40
    i32 131, label %40
  ]

40:                                               ; preds = %30, %30
  %41 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %42 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @unmute_seq, align 4
  %45 = load i32, i32* @unmute_seq, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call i32 @regmap_multi_reg_write(i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %30, %40
  br label %86

49:                                               ; preds = %3
  %50 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %51 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %77 [
    i32 134, label %53
    i32 131, label %53
    i32 133, label %69
    i32 132, label %69
  ]

53:                                               ; preds = %49, %49
  %54 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %55 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @mute_seq, align 4
  %58 = load i32, i32* @mute_seq, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @regmap_multi_reg_write(i32 %56, i32 %57, i32 %59)
  %61 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %62 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CS43130_PCM_PATH_CTL_1, align 4
  %65 = load i32, i32* @CS43130_MUTE_MASK, align 4
  %66 = load i32, i32* @CS43130_MUTE_EN, align 4
  %67 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @msleep(i32 130)
  br label %77

69:                                               ; preds = %49, %49
  %70 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %71 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CS43130_PCM_PATH_CTL_1, align 4
  %74 = load i32, i32* @CS43130_MUTE_MASK, align 4
  %75 = load i32, i32* @CS43130_MUTE_EN, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %49, %69, %53
  br label %86

78:                                               ; preds = %3
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %77, %48, %29
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
