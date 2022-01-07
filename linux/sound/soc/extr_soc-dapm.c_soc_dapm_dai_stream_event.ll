; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_dai_stream_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_dai_stream_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget* }
%struct.snd_soc_dapm_widget = type { i64, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stream event\00", align 1
@snd_soc_dapm_dai_in = common dso_local global i64 0, align 8
@SND_SOC_DAPM_EP_SOURCE = common dso_local global i32 0, align 4
@SND_SOC_DAPM_EP_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai*, i32, i32)* @soc_dapm_dai_stream_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_dapm_dai_stream_event(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %14, align 8
  store %struct.snd_soc_dapm_widget* %15, %struct.snd_soc_dapm_widget** %7, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %18, align 8
  store %struct.snd_soc_dapm_widget* %19, %struct.snd_soc_dapm_widget** %7, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %22 = icmp ne %struct.snd_soc_dapm_widget* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %25 = call i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @snd_soc_dapm_dai_in, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @SND_SOC_DAPM_EP_SOURCE, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %34 = call i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget* %33)
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @SND_SOC_DAPM_EP_SINK, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %38 = call i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %53 [
    i32 130, label %41
    i32 129, label %47
    i32 128, label %52
    i32 131, label %52
    i32 133, label %52
    i32 132, label %52
  ]

41:                                               ; preds = %39
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  br label %53

52:                                               ; preds = %39, %39, %39, %39
  br label %53

53:                                               ; preds = %39, %52, %47, %41
  br label %54

54:                                               ; preds = %53, %20
  ret void
}

declare dso_local i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget*, i8*) #1

declare dso_local i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
