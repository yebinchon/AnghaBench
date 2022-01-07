; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_prepare_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_prepare_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.snd_emu10k1 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, i64 }
%struct.TYPE_5__ = type { i32 }

@A_SPDIF_SAMPLERATE = common dso_local global i32 0, align 4
@PLAYBACK_LIST_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_LIST_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_DMA_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_PERIOD_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_p16v_pcm_prepare_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_p16v_pcm_prepare_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 128, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %39 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %70 [
    i32 44100, label %45
    i32 96000, label %53
    i32 192000, label %61
    i32 48000, label %69
  ]

45:                                               ; preds = %1
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %47 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -57569
  %51 = or i32 %50, 32896
  %52 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %46, i32 %47, i32 %48, i32 %51)
  br label %77

53:                                               ; preds = %1
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %55 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, -57569
  %59 = or i32 %58, 16448
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %54, i32 %55, i32 %56, i32 %59)
  br label %77

61:                                               ; preds = %1
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %63 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, -57569
  %67 = or i32 %66, 8224
  %68 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %62, i32 %63, i32 %64, i32 %67)
  br label %77

69:                                               ; preds = %1
  br label %70

70:                                               ; preds = %1, %69
  %71 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %72 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, -57569
  %76 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %71, i32 %72, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %70, %61, %53, %45
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 16
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %84
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %78

108:                                              ; preds = %78
  %109 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %110 = load i32, i32* @PLAYBACK_LIST_ADDR, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %113 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = mul nsw i32 128, %116
  %118 = add nsw i32 %115, %117
  %119 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %109, i32 %110, i32 %111, i32 %118)
  %120 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %121 = load i32, i32* @PLAYBACK_LIST_SIZE, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 19
  %128 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %120, i32 %121, i32 %122, i32 %127)
  %129 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %130 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %129, i32 %130, i32 %131, i32 0)
  %133 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %134 = load i32, i32* @PLAYBACK_DMA_ADDR, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %133, i32 %134, i32 %135, i32 %138)
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %141 = load i32, i32* @PLAYBACK_PERIOD_SIZE, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %140, i32 %141, i32 %142, i32 0)
  %144 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %145 = load i32, i32* @PLAYBACK_POINTER, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %144, i32 %145, i32 %146, i32 0)
  %148 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %148, i32 7, i32 %149, i32 0)
  %151 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %151, i32 8, i32 %152, i32 0)
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
