; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_pga_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_pga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { i32, %struct.wm8350_output, %struct.wm8350_output }
%struct.wm8350_output = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid shift %d\0A\00", align 1
@WM8350_RAMP_UP = common dso_local global i32 0, align 4
@WM8350_RAMP_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pga_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pga_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8350_data*, align 8
  %10 = alloca %struct.wm8350_output*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8350_data* %16, %struct.wm8350_data** %9, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %26 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %23
    i32 3, label %23
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %22 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %21, i32 0, i32 2
  store %struct.wm8350_output* %22, %struct.wm8350_output** %10, align 8
  br label %31

23:                                               ; preds = %3, %3
  %24 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %25 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %24, i32 0, i32 1
  store %struct.wm8350_output* %25, %struct.wm8350_output** %10, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %4, align 4
  br label %54

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %53 [
    i32 129, label %33
    i32 128, label %43
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @WM8350_RAMP_UP, align 4
  %35 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %36 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %38 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %40 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %39, i32 0, i32 0
  %41 = call i32 @msecs_to_jiffies(i32 1)
  %42 = call i32 @schedule_delayed_work(i32* %40, i32 %41)
  br label %53

43:                                               ; preds = %31
  %44 = load i32, i32* @WM8350_RAMP_DOWN, align 4
  %45 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %46 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wm8350_output*, %struct.wm8350_output** %10, align 8
  %48 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %50 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %49, i32 0, i32 0
  %51 = call i32 @msecs_to_jiffies(i32 1)
  %52 = call i32 @schedule_delayed_work(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %31, %43, %33
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
