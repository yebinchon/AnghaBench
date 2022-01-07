; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_aif_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_aif_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.dmic = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @dmic_aif_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmic_aif_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.dmic*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.dmic* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.dmic* %14, %struct.dmic** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %48 [
    i32 128, label %16
    i32 129, label %37
  ]

16:                                               ; preds = %3
  %17 = load %struct.dmic*, %struct.dmic** %8, align 8
  %18 = getelementptr inbounds %struct.dmic, %struct.dmic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.dmic*, %struct.dmic** %8, align 8
  %23 = getelementptr inbounds %struct.dmic, %struct.dmic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value(i32 %24, i32 1)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.dmic*, %struct.dmic** %8, align 8
  %28 = getelementptr inbounds %struct.dmic, %struct.dmic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.dmic*, %struct.dmic** %8, align 8
  %33 = getelementptr inbounds %struct.dmic, %struct.dmic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @msleep(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %48

37:                                               ; preds = %3
  %38 = load %struct.dmic*, %struct.dmic** %8, align 8
  %39 = getelementptr inbounds %struct.dmic, %struct.dmic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dmic*, %struct.dmic** %8, align 8
  %44 = getelementptr inbounds %struct.dmic, %struct.dmic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpiod_set_value(i32 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %3, %47, %36
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.dmic* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
