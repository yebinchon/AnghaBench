; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_interleaved_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_interleaved_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i8*, i32, i32, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*)* @interleaved_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interleaved_copy(%struct.snd_pcm_substream* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)* %5) #0 {
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*, align 8
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)* %5, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %13, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)** %12, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = load i32, i32* %11, align 4
  %34 = call i32 %26(%struct.snd_pcm_substream* %27, i32 0, i32 %28, i8* %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
