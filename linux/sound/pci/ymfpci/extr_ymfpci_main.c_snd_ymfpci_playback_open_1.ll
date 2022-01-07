; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_open_1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_open_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.snd_ymfpci_pcm*, i32 }
%struct.snd_ymfpci_pcm = type { %struct.snd_pcm_substream*, i32, %struct.snd_ymfpci* }
%struct.snd_ymfpci = type { i32 }

@snd_ymfpci_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLAYBACK_VOICE = common dso_local global i32 0, align 4
@snd_ymfpci_pcm_free_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_open_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_open_1(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ymfpci_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ymfpci* %9, %struct.snd_ymfpci** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @snd_ymfpci_playback, align 4
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %18 = load i32, i32* @UINT_MAX, align 4
  %19 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %16, i32 %17, i32 5334, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = call i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime* %25, i32 48000)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.snd_ymfpci_pcm* @kzalloc(i32 24, i32 %32)
  store %struct.snd_ymfpci_pcm* %33, %struct.snd_ymfpci_pcm** %6, align 8
  %34 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %35 = icmp eq %struct.snd_ymfpci_pcm* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %31
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %41 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %41, i32 0, i32 2
  store %struct.snd_ymfpci* %40, %struct.snd_ymfpci** %42, align 8
  %43 = load i32, i32* @PLAYBACK_VOICE, align 4
  %44 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %48 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %47, i32 0, i32 0
  store %struct.snd_pcm_substream* %46, %struct.snd_pcm_substream** %48, align 8
  %49 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  store %struct.snd_ymfpci_pcm* %49, %struct.snd_ymfpci_pcm** %51, align 8
  %52 = load i32, i32* @snd_ymfpci_pcm_free_substream, align 4
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %39, %36, %29, %22
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime*, i32) #1

declare dso_local %struct.snd_ymfpci_pcm* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
