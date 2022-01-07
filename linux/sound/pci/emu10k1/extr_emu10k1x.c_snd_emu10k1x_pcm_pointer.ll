; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.emu10k1x = type { i32 }

@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_emu10k1x_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.emu10k1x_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.emu10k1x* %14, %struct.emu10k1x** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %5, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %19, align 8
  store %struct.emu10k1x_pcm* %20, %struct.emu10k1x_pcm** %6, align 8
  %21 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %26 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %90

31:                                               ; preds = %1
  %32 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %33 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %32, i32 %33, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %37 = load i32, i32* @PLAYBACK_POINTER, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %36, i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %41 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %40, i32 %41, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %48, i64 %51)
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %90

55:                                               ; preds = %46, %31
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %61 = load i32, i32* @PLAYBACK_POINTER, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %60, i32 %61, i32 %62)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %65, i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = ashr i64 %68, 3
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = mul nsw i64 %69, %72
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %64
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %82, %64
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %2, align 8
  br label %90

90:                                               ; preds = %88, %54, %30
  %91 = load i64, i64* %2, align 8
  ret i64 %91
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_emu10k1x_ptr_read(%struct.emu10k1x*, i32, i32) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
