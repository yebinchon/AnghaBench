; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_mic_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_mic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32, i32, i32, %struct.snd_pcm_substream*, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.snd_pcm_substream*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAPTURE_AC97MIC = common dso_local global i32 0, align 4
@IPR_MICBUFFULL = common dso_local global i32 0, align 4
@IPR_MICBUFHALFFULL = common dso_local global i32 0, align 4
@INTE_MICBUFENABLE = common dso_local global i32 0, align 4
@MICBA = common dso_local global i32 0, align 4
@MICBS = common dso_local global i32 0, align 4
@A_MICIDX = common dso_local global i32 0, align 4
@MICIDX = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1_capture = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SNDRV_PCM_RATE_8000 = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_ac97mic_interrupt = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@hw_constraints_capture_period_sizes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_capture_mic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_mic_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.snd_emu10k1_pcm* @kzalloc(i32 48, i32 %12)
  store %struct.snd_emu10k1_pcm* %13, %struct.snd_emu10k1_pcm** %5, align 8
  %14 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %15 = icmp eq %struct.snd_emu10k1_pcm* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %21 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %21, i32 0, i32 7
  store %struct.snd_emu10k1* %20, %struct.snd_emu10k1** %22, align 8
  %23 = load i32, i32* @CAPTURE_AC97MIC, align 4
  %24 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %27, i32 0, i32 5
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %28, align 8
  %29 = load i32, i32* @IPR_MICBUFFULL, align 4
  %30 = load i32, i32* @IPR_MICBUFHALFFULL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @INTE_MICBUFENABLE, align 4
  %35 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @MICBA, align 4
  %38 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MICBS, align 4
  %41 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %19
  %48 = load i32, i32* @A_MICIDX, align 4
  br label %51

49:                                               ; preds = %19
  %50 = load i32, i32* @MICIDX, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %57, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  store %struct.snd_emu10k1_pcm* %55, %struct.snd_emu10k1_pcm** %59, align 8
  %60 = load i32, i32* @snd_emu10k1_pcm_free_substream, align 4
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 0
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %62, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = bitcast %struct.TYPE_2__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 bitcast (%struct.TYPE_2__* @snd_emu10k1_capture to i8*), i64 16, i1 false)
  %68 = load i32, i32* @SNDRV_PCM_RATE_8000, align 4
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 8000, i32* %74, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 8000, i32* %77, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @snd_emu10k1_pcm_ac97mic_interrupt, align 4
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %85, i32 0, i32 0
  store %struct.snd_pcm_substream* %84, %struct.snd_pcm_substream** %86, align 8
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %88 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %89 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %87, i32 0, i32 %88, i32* @hw_constraints_capture_period_sizes)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %51, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu10k1_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
