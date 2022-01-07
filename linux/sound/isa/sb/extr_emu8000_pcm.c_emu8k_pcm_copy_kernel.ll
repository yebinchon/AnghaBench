; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_copy_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_copy_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { i32 }

@COPY_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @emu8k_pcm_copy_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_copy_kernel(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_emu8k_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %15, align 8
  store %struct.snd_emu8k_pcm* %16, %struct.snd_emu8k_pcm** %11, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @bytes_to_frames(%struct.TYPE_2__* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @bytes_to_frames(%struct.TYPE_2__* %24, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %11, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @COPY_KERNEL, align 4
  %32 = call i32 @LOOP_WRITE(%struct.snd_emu8k_pcm* %27, i64 %28, i8* %29, i64 %30, i32 %31)
  ret i32 0
}

declare dso_local i64 @bytes_to_frames(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @LOOP_WRITE(%struct.snd_emu8k_pcm*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
