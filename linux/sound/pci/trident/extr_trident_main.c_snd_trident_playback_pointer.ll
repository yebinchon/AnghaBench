; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32 }
%struct.snd_trident = type { i64, i32 }

@T4D_LFO_GC_CIR = common dso_local global i64 0, align 8
@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@CH_DX_CSO_ALPHA_FMS = common dso_local global i64 0, align 8
@CH_NX_DELTA_CSO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_trident_voice*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_trident* %9, %struct.snd_trident** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  store %struct.snd_trident_voice* %15, %struct.snd_trident_voice** %6, align 8
  %16 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %17 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %23 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %26 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %29 = load i64, i64* @T4D_LFO_GC_CIR, align 8
  %30 = call i32 @TRID_REG(%struct.snd_trident* %28, i64 %29)
  %31 = call i32 @outb(i32 %27, i32 %30)
  %32 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %39 = load i64, i64* @CH_DX_CSO_ALPHA_FMS, align 8
  %40 = add nsw i64 %39, 2
  %41 = call i32 @TRID_REG(%struct.snd_trident* %38, i64 %40)
  %42 = call i32 @inw(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %50

43:                                               ; preds = %21
  %44 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %45 = load i64, i64* @CH_NX_DELTA_CSO, align 8
  %46 = call i32 @TRID_REG(%struct.snd_trident* %44, i64 %45)
  %47 = call i64 @inl(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 16777215
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %52 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp uge i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
