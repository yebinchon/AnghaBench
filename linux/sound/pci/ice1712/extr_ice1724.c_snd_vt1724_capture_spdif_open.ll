; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_capture_spdif_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_capture_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i8* }
%struct.snd_ice1712 = type { %struct.TYPE_4__, i64, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)* }
%struct.snd_ice1712.0 = type opaque

@vt1724_capture_spdif_reg = common dso_local global i32 0, align 4
@snd_vt1724_2ch_stereo = common dso_local global i32 0, align 4
@snd_vt1724_spdif = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@VT1724_BUFFER_ALIGN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_capture_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_capture_spdif_open(%struct.snd_pcm_substream* %0) #0 {
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
  store i8* bitcast (i32* @vt1724_capture_spdif_reg to i8*), i8** %11, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 2
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %14, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @snd_vt1724_2ch_stereo, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = call i32 @set_rate_constraints(%struct.snd_ice1712* %23, %struct.snd_pcm_substream* %24)
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @snd_vt1724_spdif, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %31)
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %33, i32 0, i32 32, i32 24)
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %37 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %38 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %35, i32 0, i32 %36, i32 %37)
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %41 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %42 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %39, i32 0, i32 %40, i32 %41)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %44 = call i32 @constrain_rate_if_locked(%struct.snd_pcm_substream* %43)
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)** %48, align 8
  %50 = icmp ne i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %30
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)** %55, align 8
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %58 = bitcast %struct.snd_ice1712* %57 to %struct.snd_ice1712.0*
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = call i32 %56(%struct.snd_ice1712.0* %58, %struct.snd_pcm_substream* %59)
  br label %61

61:                                               ; preds = %51, %30
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @set_rate_constraints(%struct.snd_ice1712*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @constrain_rate_if_locked(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
