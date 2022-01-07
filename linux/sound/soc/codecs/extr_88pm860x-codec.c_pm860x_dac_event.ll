; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@DAC_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@DAC_RIGHT = common dso_local global i32 0, align 4
@MODULATOR = common dso_local global i32 0, align 4
@PM860X_DAC_OFFSET = common dso_local global i32 0, align 4
@DAC_MUTE = common dso_local global i32 0, align 4
@PM860X_EAR_CTRL_2 = common dso_local global i32 0, align 4
@RSYNC_CHANGE = common dso_local global i32 0, align 4
@PM860X_DAC_EN_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pm860x_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @DAC_LEFT, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @DAC_RIGHT, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %92 [
    i32 128, label %31
    i32 129, label %54
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* @MODULATOR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @PM860X_DAC_OFFSET, align 4
  %40 = load i32, i32* @DAC_MUTE, align 4
  %41 = load i32, i32* @DAC_MUTE, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %44 = load i32, i32* @PM860X_EAR_CTRL_2, align 4
  %45 = load i32, i32* @RSYNC_CHANGE, align 4
  %46 = load i32, i32* @RSYNC_CHANGE, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = load i32, i32* @PM860X_DAC_EN_2, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %34, %31
  br label %92

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = load i32, i32* @PM860X_DAC_OFFSET, align 4
  %60 = load i32, i32* @DAC_MUTE, align 4
  %61 = load i32, i32* @DAC_MUTE, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* @PM860X_EAR_CTRL_2, align 4
  %65 = load i32, i32* @RSYNC_CHANGE, align 4
  %66 = load i32, i32* @RSYNC_CHANGE, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %69 = load i32, i32* @PM860X_DAC_EN_2, align 4
  %70 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DAC_LEFT, align 4
  %77 = load i32, i32* @DAC_RIGHT, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %57
  %82 = load i32, i32* @MODULATOR, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %81, %57
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %88 = load i32, i32* @PM860X_DAC_EN_2, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %54
  br label %92

92:                                               ; preds = %29, %91, %53
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
