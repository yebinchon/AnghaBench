; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.emu10k1x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@PLAYBACK_LIST_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_LIST_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@PLAYBACK_UNKNOWN1 = common dso_local global i32 0, align 4
@PLAYBACK_UNKNOWN2 = common dso_local global i32 0, align 4
@PLAYBACK_DMA_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.emu10k1x*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.emu10k1x_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.emu10k1x* %11, %struct.emu10k1x** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %4, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 3
  %17 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %16, align 8
  store %struct.emu10k1x_pcm* %17, %struct.emu10k1x_pcm** %5, align 8
  %18 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %24 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 1024, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %7, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %32, i32 %35)
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %57, %1
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 16
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %62 = load i32, i32* @PLAYBACK_LIST_ADDR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %65 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 1024, %68
  %70 = add nsw i32 %67, %69
  %71 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %61, i32 %62, i32 %63, i32 %70)
  %72 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %73 = load i32, i32* @PLAYBACK_LIST_SIZE, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 %78, 19
  %80 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %72, i32 %73, i32 %74, i32 %79)
  %81 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %82 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %86 = load i32, i32* @PLAYBACK_POINTER, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %90 = load i32, i32* @PLAYBACK_UNKNOWN1, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %94 = load i32, i32* @PLAYBACK_UNKNOWN2, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %98 = load i32, i32* @PLAYBACK_DMA_ADDR, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %97, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %105 = load i32, i32* @PLAYBACK_PERIOD_SIZE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %107, i32 %110)
  %112 = shl i32 %111, 16
  %113 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %104, i32 %105, i32 %106, i32 %112)
  ret i32 0
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
