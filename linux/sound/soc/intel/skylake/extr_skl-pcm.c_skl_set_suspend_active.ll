; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_set_suspend_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_set_suspend_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*, i32 }
%struct.snd_soc_dapm_widget = type { i64 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*, i32)* @skl_set_suspend_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_set_suspend_active(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_bus*, align 8
  %8 = alloca %struct.snd_soc_dapm_widget*, align 8
  %9 = alloca %struct.skl_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hdac_bus* @dev_get_drvdata(i32 %12)
  store %struct.hdac_bus* %13, %struct.hdac_bus** %7, align 8
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %15 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %14)
  store %struct.skl_dev* %15, %struct.skl_dev** %9, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 1
  %24 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %23, align 8
  store %struct.snd_soc_dapm_widget* %24, %struct.snd_soc_dapm_widget** %8, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %27, align 8
  store %struct.snd_soc_dapm_widget* %28, %struct.snd_soc_dapm_widget** %8, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %39 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %56

42:                                               ; preds = %34, %29
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %52 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %47, %42
  br label %56

56:                                               ; preds = %55, %37
  ret void
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
