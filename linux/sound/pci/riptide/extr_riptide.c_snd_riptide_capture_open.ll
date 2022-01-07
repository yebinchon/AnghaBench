; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.pcmhw*, i32 }
%struct.pcmhw = type { i32*, i32, i32, i32, i32 }
%struct.snd_riptide = type { %struct.snd_pcm_substream* }

@snd_riptide_capture = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lbus_rec_path = common dso_local global i32 0, align 4
@PADC = common dso_local global i32 0, align 4
@ACLNK2PADC = common dso_local global i32 0, align 4
@ST_STOP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_riptide*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.pcmhw*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_riptide* %8, %struct.snd_riptide** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %14 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %13, i32 0, i32 0
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %14, align 8
  %15 = load i32, i32* @snd_riptide_capture, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pcmhw* @kzalloc(i32 24, i32 %18)
  store %struct.pcmhw* %19, %struct.pcmhw** %6, align 8
  %20 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %21 = icmp eq %struct.pcmhw* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load i32, i32* @lbus_rec_path, align 4
  %27 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %28 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @PADC, align 4
  %30 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %31 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @ACLNK2PADC, align 4
  %33 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %34 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %36 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 255, i32* %38, align 4
  %39 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %40 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 255, i32* %42, align 4
  %43 = load i32, i32* @ST_STOP, align 4
  %44 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %45 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  store %struct.pcmhw* %46, %struct.pcmhw** %48, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %51 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %25, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
