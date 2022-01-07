; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_capture_pro_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_capture_pro_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i8* }
%struct.snd_ice1712 = type { i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)*, %struct.snd_pcm_substream* }

@vt1724_capture_pro_reg = common dso_local global i32 0, align 4
@snd_vt1724_2ch_stereo = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@VT1724_BUFFER_ALIGN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_capture_pro_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_capture_pro_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_ice1712* %6, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 1
  store i8* bitcast (i32* @vt1724_capture_pro_reg to i8*), i8** %11, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %14, align 8
  %15 = load i32, i32* @snd_vt1724_2ch_stereo, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %18)
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %20, i32 0, i32 32, i32 24)
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = call i32 @set_rate_constraints(%struct.snd_ice1712* %22, %struct.snd_pcm_substream* %23)
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %27 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %28 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %25, i32 0, i32 %26, i32 %27)
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %31 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %32 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = call i32 @constrain_rate_if_locked(%struct.snd_pcm_substream* %33)
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)** %36, align 8
  %38 = icmp ne i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 0
  %42 = load i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712*, %struct.snd_pcm_substream*)** %41, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %45 = call i32 %42(%struct.snd_ice1712* %43, %struct.snd_pcm_substream* %44)
  br label %46

46:                                               ; preds = %39, %1
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @set_rate_constraints(%struct.snd_ice1712*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @constrain_rate_if_locked(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
