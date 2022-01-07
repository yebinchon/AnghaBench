; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32* }
%struct.snd_emu10k1 = type { i32, %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %16, align 8
  store %struct.snd_emu10k1_pcm* %17, %struct.snd_emu10k1_pcm** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %116 [
    i32 130, label %22
    i32 132, label %35
    i32 131, label %35
    i32 129, label %94
    i32 133, label %94
    i32 128, label %94
  ]

22:                                               ; preds = %2
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %24 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %23, i32 1, i32 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %28, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %2, %2, %22
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 132
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %40 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %43 = call i32 @snd_emu10k1_playback_mangle_extra(%struct.snd_emu10k1* %39, %struct.snd_emu10k1_pcm* %40, %struct.snd_pcm_substream* %41, %struct.snd_pcm_runtime* %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 1
  %47 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %46, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %47, i64 %50
  store %struct.snd_emu10k1_pcm_mixer* %51, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %53 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %59 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %52, i32 %57, i32 1, i32 0, %struct.snd_emu10k1_pcm_mixer* %58)
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %61 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %67 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %60, i32 %65, i32 0, i32 0, %struct.snd_emu10k1_pcm_mixer* %66)
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %69 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %68, i32 %71, i32 1, i32 1, %struct.snd_emu10k1_pcm_mixer* null)
  %73 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %74 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %73, i32 %78, i32 1, i32 0)
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %81 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %82 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %80, i32 %85, i32 0, i32 0)
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %88 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %87, i32 %90, i32 1, i32 1)
  %92 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %119

94:                                               ; preds = %2, %2, %2
  %95 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %96 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %98 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %99 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %97, i32 %102)
  %104 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %105 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %104, i32 %109)
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %112 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %113 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %111, i32 %114)
  br label %119

116:                                              ; preds = %2
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %94, %44
  %120 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_mangle_extra(%struct.snd_emu10k1*, %struct.snd_emu10k1_pcm*, %struct.snd_pcm_substream*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1*, i32, i32, i32, %struct.snd_emu10k1_pcm_mixer*) #1

declare dso_local i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
