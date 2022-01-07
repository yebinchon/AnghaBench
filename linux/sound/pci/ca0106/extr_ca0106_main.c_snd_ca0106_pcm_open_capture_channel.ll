; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_open_capture_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_open_capture_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, %struct.snd_pcm_substream*, %struct.snd_ca0106* }
%struct.snd_ca0106 = type { %struct.snd_ca0106_channel* }
%struct.snd_ca0106_channel = type { i32, i32, %struct.snd_ca0106_pcm*, %struct.snd_ca0106* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_ca0106_pcm_free_substream = common dso_local global i32 0, align 4
@snd_ca0106_capture_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ca0106_pcm_open_capture_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_open_capture_channel(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ca0106*, align 8
  %7 = alloca %struct.snd_ca0106_channel*, align 8
  %8 = alloca %struct.snd_ca0106_pcm*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ca0106* %12, %struct.snd_ca0106** %6, align 8
  %13 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %14 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %13, i32 0, i32 0
  %15 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %15, i64 %17
  store %struct.snd_ca0106_channel* %18, %struct.snd_ca0106_channel** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.snd_ca0106_pcm* @kzalloc(i32 24, i32 %22)
  store %struct.snd_ca0106_pcm* %23, %struct.snd_ca0106_pcm** %8, align 8
  %24 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %25 = icmp ne %struct.snd_ca0106_pcm* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %2
  %30 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %31 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %32 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %31, i32 0, i32 2
  store %struct.snd_ca0106* %30, %struct.snd_ca0106** %32, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %35 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %34, i32 0, i32 1
  store %struct.snd_pcm_substream* %33, %struct.snd_pcm_substream** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %38 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 2
  store %struct.snd_ca0106_pcm* %39, %struct.snd_ca0106_pcm** %41, align 8
  %42 = load i32, i32* @snd_ca0106_pcm_free_substream, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @snd_ca0106_capture_hw, align 4
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %49 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %50 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %49, i32 0, i32 3
  store %struct.snd_ca0106* %48, %struct.snd_ca0106** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %53 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %55 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %57 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %58 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %57, i32 0, i32 2
  store %struct.snd_ca0106_pcm* %56, %struct.snd_ca0106_pcm** %58, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %60 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %61 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %29
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %29
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %68 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %66, i32 0, i32 %67, i32 64)
  store i32 %68, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %63, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_ca0106_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
