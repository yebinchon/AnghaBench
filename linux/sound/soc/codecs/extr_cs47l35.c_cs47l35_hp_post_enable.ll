; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_hp_post_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_hp_post_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }

@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to check output enables: %d\0A\00", align 1
@MADERA_OUT1L_ENA = common dso_local global i32 0, align 4
@MADERA_OUT1R_ENA = common dso_local global i32 0, align 4
@MADERA_EDRE_HP_STEREO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_widget*)* @cs47l35_hp_post_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs47l35_hp_post_enable(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_widget*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %2, align 8
  %6 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %8)
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %16 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %14, i32 %15, i32* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %42

25:                                               ; preds = %13
  %26 = load i32, i32* @MADERA_OUT1L_ENA, align 4
  %27 = load i32, i32* @MADERA_OUT1R_ENA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MADERA_OUT1L_ENA, align 4
  %33 = load i32, i32* @MADERA_OUT1R_ENA, align 4
  %34 = or i32 %32, %33
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @MADERA_EDRE_HP_STEREO_CONTROL, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 1, i32 1)
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %19, %41, %37, %36
  ret void
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
