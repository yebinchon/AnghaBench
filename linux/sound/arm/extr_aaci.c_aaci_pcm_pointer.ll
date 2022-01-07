; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @aaci_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.aaci_runtime*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.aaci_runtime*, %struct.aaci_runtime** %10, align 8
  store %struct.aaci_runtime* %11, %struct.aaci_runtime** %4, align 8
  %12 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %5, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %19, i64 %20)
  ret i32 %21
}

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
