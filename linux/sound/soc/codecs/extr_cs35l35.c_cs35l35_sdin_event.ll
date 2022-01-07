; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_sdin_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_sdin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32 }

@CS35L35_CLK_CTL1 = common dso_local global i32 0, align 4
@CS35L35_MCLK_DIS_MASK = common dso_local global i32 0, align 4
@CS35L35_MCLK_DIS_SHIFT = common dso_local global i32 0, align 4
@CS35L35_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L35_DISCHG_FILT_MASK = common dso_local global i32 0, align 4
@CS35L35_DISCHG_FILT_SHIFT = common dso_local global i32 0, align 4
@CS35L35_PDN_ALL_MASK = common dso_local global i32 0, align 4
@CS35L35_AMP_DIG_VOL_CTL = common dso_local global i32 0, align 4
@CS35L35_AMP_DIGSFT_MASK = common dso_local global i32 0, align 4
@CS35L35_AMP_DIGSFT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l35_sdin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_sdin_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.cs35l35_private*, align 8
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
  %15 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs35l35_private* %15, %struct.cs35l35_private** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %79 [
    i32 128, label %17
    i32 129, label %40
  ]

17:                                               ; preds = %3
  %18 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %19 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %22 = load i32, i32* @CS35L35_MCLK_DIS_MASK, align 4
  %23 = load i32, i32* @CS35L35_MCLK_DIS_SHIFT, align 4
  %24 = shl i32 0, %23
  %25 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %27 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CS35L35_PWRCTL1, align 4
  %30 = load i32, i32* @CS35L35_DISCHG_FILT_MASK, align 4
  %31 = load i32, i32* @CS35L35_DISCHG_FILT_SHIFT, align 4
  %32 = shl i32 0, %31
  %33 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %32)
  %34 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %35 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CS35L35_PWRCTL1, align 4
  %38 = load i32, i32* @CS35L35_PDN_ALL_MASK, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 0)
  br label %87

40:                                               ; preds = %3
  %41 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %42 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CS35L35_PWRCTL1, align 4
  %45 = load i32, i32* @CS35L35_DISCHG_FILT_MASK, align 4
  %46 = load i32, i32* @CS35L35_DISCHG_FILT_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %47)
  %49 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %50 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CS35L35_PWRCTL1, align 4
  %53 = load i32, i32* @CS35L35_PDN_ALL_MASK, align 4
  %54 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 1)
  %55 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %56 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CS35L35_AMP_DIG_VOL_CTL, align 4
  %59 = load i32, i32* @CS35L35_AMP_DIGSFT_MASK, align 4
  %60 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %62 = call i32 @cs35l35_wait_for_pdn(%struct.cs35l35_private* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %64 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %67 = load i32, i32* @CS35L35_MCLK_DIS_MASK, align 4
  %68 = load i32, i32* @CS35L35_MCLK_DIS_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %69)
  %71 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %72 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CS35L35_AMP_DIG_VOL_CTL, align 4
  %75 = load i32, i32* @CS35L35_AMP_DIGSFT_MASK, align 4
  %76 = load i32, i32* @CS35L35_AMP_DIGSFT_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %77)
  br label %87

79:                                               ; preds = %3
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %79, %40, %17
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cs35l35_wait_for_pdn(%struct.cs35l35_private*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
