; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_dai_get_connected_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_dai_get_connected_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*, %struct.TYPE_7__* }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.TYPE_7__ = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dapm_widget_list = type { i32 }

@widgets = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SND_SOC_DAPM_DIR_OUT = common dso_local global i32 0, align 4
@SND_SOC_DAPM_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_dai_get_connected_widgets(%struct.snd_soc_dai* %0, i32 %1, %struct.snd_soc_dapm_widget_list** %2, {}* %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_widget_list**, align 8
  %8 = alloca {}*, align 8
  %9 = alloca %struct.snd_soc_card*, align 8
  %10 = alloca %struct.snd_soc_dapm_widget*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dapm_widget_list** %2, %struct.snd_soc_dapm_widget_list*** %7, align 8
  store {}* %3, {}** %8, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %16, align 8
  store %struct.snd_soc_card* %17, %struct.snd_soc_card** %9, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @widgets, i32 0, i32 0), align 4
  %19 = call i32 @LIST_HEAD(i32 %18)
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 0
  %22 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %23 = call i32 @mutex_lock_nested(i32* %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 1
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %29, align 8
  store %struct.snd_soc_dapm_widget* %30, %struct.snd_soc_dapm_widget** %10, align 8
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %32 = load i32, i32* @SND_SOC_DAPM_DIR_OUT, align 4
  %33 = call i32 @invalidate_paths_ep(%struct.snd_soc_dapm_widget* %31, i32 %32)
  %34 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %35 = load {}*, {}** %8, align 8
  %36 = bitcast {}* %35 to i32 (%struct.snd_soc_dapm_widget*, i32)*
  %37 = call i32 @is_connected_output_ep(%struct.snd_soc_dapm_widget* %34, %struct.TYPE_8__* @widgets, i32 (%struct.snd_soc_dapm_widget*, i32)* %36)
  store i32 %37, i32* %11, align 4
  br label %49

38:                                               ; preds = %4
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %40, align 8
  store %struct.snd_soc_dapm_widget* %41, %struct.snd_soc_dapm_widget** %10, align 8
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %43 = load i32, i32* @SND_SOC_DAPM_DIR_IN, align 4
  %44 = call i32 @invalidate_paths_ep(%struct.snd_soc_dapm_widget* %42, i32 %43)
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %46 = load {}*, {}** %8, align 8
  %47 = bitcast {}* %46 to i32 (%struct.snd_soc_dapm_widget*, i32)*
  %48 = call i32 @is_connected_input_ep(%struct.snd_soc_dapm_widget* %45, %struct.TYPE_8__* @widgets, i32 (%struct.snd_soc_dapm_widget*, i32)* %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %38, %27
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @widgets, i32 0, i32 0), align 4
  %51 = call i32 @list_del(i32 %50)
  %52 = load %struct.snd_soc_dapm_widget_list**, %struct.snd_soc_dapm_widget_list*** %7, align 8
  %53 = call i32 @dapm_widget_list_create(%struct.snd_soc_dapm_widget_list** %52, %struct.TYPE_8__* @widgets)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @trace_snd_soc_dapm_connected(i32 %59, i32 %60)
  %62 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %63 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @invalidate_paths_ep(%struct.snd_soc_dapm_widget*, i32) #1

declare dso_local i32 @is_connected_output_ep(%struct.snd_soc_dapm_widget*, %struct.TYPE_8__*, i32 (%struct.snd_soc_dapm_widget*, i32)*) #1

declare dso_local i32 @is_connected_input_ep(%struct.snd_soc_dapm_widget*, %struct.TYPE_8__*, i32 (%struct.snd_soc_dapm_widget*, i32)*) #1

declare dso_local i32 @list_del(i32) #1

declare dso_local i32 @dapm_widget_list_create(%struct.snd_soc_dapm_widget_list**, %struct.TYPE_8__*) #1

declare dso_local i32 @trace_snd_soc_dapm_connected(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
