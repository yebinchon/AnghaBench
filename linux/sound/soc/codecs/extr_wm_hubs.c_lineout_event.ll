; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_lineout_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_lineout_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unknown line output\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @lineout_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lineout_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm_hubs_data*, align 8
  %10 = alloca i32*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm_hubs_data* %16, %struct.wm_hubs_data** %9, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 131, label %20
    i32 130, label %23
    i32 129, label %26
    i32 128, label %29
  ]

20:                                               ; preds = %3
  %21 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %9, align 8
  %22 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %21, i32 0, i32 0
  store i32* %22, i32** %10, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %9, align 8
  %25 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %24, i32 0, i32 1
  store i32* %25, i32** %10, align 8
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %9, align 8
  %28 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %27, i32 0, i32 2
  store i32* %28, i32** %10, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %9, align 8
  %31 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %30, i32 0, i32 3
  store i32* %31, i32** %10, align 8
  br label %36

32:                                               ; preds = %3
  %33 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %29, %26, %23, %20
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SND_SOC_DAPM_EVENT_ON(i32 %37)
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @SND_SOC_DAPM_EVENT_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
