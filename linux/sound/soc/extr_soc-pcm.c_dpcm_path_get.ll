; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_path_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_path_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_soc_dapm_widget_list = type { i32 }

@dpcm_end_walk_at_be = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ASoC: found %d audio %s paths\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"playback\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpcm_path_get(%struct.snd_soc_pcm_runtime* %0, i32 %1, %struct.snd_soc_dapm_widget_list** %2) #0 {
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_widget_list**, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dapm_widget_list** %2, %struct.snd_soc_dapm_widget_list*** %6, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  store %struct.snd_soc_dai* %11, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.snd_soc_dapm_widget_list**, %struct.snd_soc_dapm_widget_list*** %6, align 8
  %15 = load i32, i32* @dpcm_end_walk_at_be, align 4
  %16 = call i32 @snd_soc_dapm_dai_get_connected_widgets(%struct.snd_soc_dai* %12, i32 %13, %struct.snd_soc_dapm_widget_list** %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @snd_soc_dapm_dai_get_connected_widgets(%struct.snd_soc_dai*, i32, %struct.snd_soc_dapm_widget_list**, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
