; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_pointer_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_pointer_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { i32 }
%struct.emu10k1x = type { i32 }

@CAPTURE_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_pointer_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_emu10k1x_pcm_pointer_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.emu10k1x_pcm*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.emu10k1x* %9, %struct.emu10k1x** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %14, align 8
  store %struct.emu10k1x_pcm* %15, %struct.emu10k1x_pcm** %6, align 8
  %16 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %6, align 8
  %17 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %24 = load i32, i32* @CAPTURE_POINTER, align 4
  %25 = call i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %23, i32 %24, i32 0)
  %26 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %22, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %32, %21
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %20
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
