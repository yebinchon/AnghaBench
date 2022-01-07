; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { %struct.snd_pcm_substream*, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.snd_emu10k1_pcm_mixer*, %struct.snd_pcm_substream* }
%struct.snd_emu10k1_pcm_mixer = type { i32**, i32**, i32*, %struct.snd_emu10k1_pcm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLAYBACK_EFX = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1_efx_playback = common dso_local global i32 0, align 4
@NUM_EFX_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_efx_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_efx_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_emu10k1_pcm* @kzalloc(i32 24, i32 %14)
  store %struct.snd_emu10k1_pcm* %15, %struct.snd_emu10k1_pcm** %5, align 8
  %16 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %17 = icmp eq %struct.snd_emu10k1_pcm* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %84

21:                                               ; preds = %1
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %23 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %23, i32 0, i32 2
  store %struct.snd_emu10k1* %22, %struct.snd_emu10k1** %24, align 8
  %25 = load i32, i32* @PLAYBACK_EFX, align 4
  %26 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 0
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %30, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %32, i32 0, i32 1
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %33, align 8
  %34 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 2
  store %struct.snd_emu10k1_pcm* %34, %struct.snd_emu10k1_pcm** %36, align 8
  %37 = load i32, i32* @snd_emu10k1_pcm_free_substream, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @snd_emu10k1_efx_playback, align 4
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %80, %21
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %48, i32 0, i32 0
  %50 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %50, i64 %52
  store %struct.snd_emu10k1_pcm_mixer* %53, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %61, i32 0, i32 1
  %63 = call i32 @memset(i32*** %62, i32 0, i32 8)
  %64 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 255, i32* %69, align 4
  %70 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 65535, i32* %73, align 4
  %74 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %75 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %75, i32 0, i32 3
  store %struct.snd_emu10k1_pcm* %74, %struct.snd_emu10k1_pcm** %76, align 8
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @snd_emu10k1_pcm_efx_mixer_notify(%struct.snd_emu10k1* %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %47
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %43

83:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu10k1_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

declare dso_local i32 @snd_emu10k1_pcm_efx_mixer_notify(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
