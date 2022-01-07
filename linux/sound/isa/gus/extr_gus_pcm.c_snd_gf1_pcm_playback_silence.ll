; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_silence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i64)* @snd_gf1_pcm_playback_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_silence(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca %struct.gus_pcm_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %10, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 2
  %19 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %18, align 8
  store %struct.gus_pcm_private* %19, %struct.gus_pcm_private** %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @get_bpos(%struct.gus_pcm_private* %22, i32 %23, i64 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %50

32:                                               ; preds = %4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @bytes_to_samples(%struct.snd_pcm_runtime* %42, i64 %43)
  %45 = call i32 @snd_pcm_format_set_silence(i32 %35, i64 %41, i32 %44)
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @playback_copy_ack(%struct.snd_pcm_substream* %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %32, %29
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @get_bpos(%struct.gus_pcm_private*, i32, i64, i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i64, i32) #1

declare dso_local i32 @bytes_to_samples(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @playback_copy_ack(%struct.snd_pcm_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
