; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i64, i32*, i32**, i32, i32* }
%struct.snd_emu10k1 = type { i32 }

@NUM_EFX_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_efx_playback_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_efx_playback_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_emu10k1* %9, %struct.snd_emu10k1** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %14, align 8
  %16 = icmp eq %struct.snd_emu10k1_pcm* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %20, align 8
  store %struct.snd_emu10k1_pcm* %21, %struct.snd_emu10k1_pcm** %6, align 8
  %22 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @snd_emu10k1_voice_free(i32 %29, i32* %32)
  %34 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %18
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %41
  %51 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @snd_emu10k1_voice_free(i32 %53, i32* %60)
  %62 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %50, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %79 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1* %78, i32* %81)
  %83 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %89 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_voice_free(i32, i32*) #1

declare dso_local i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
