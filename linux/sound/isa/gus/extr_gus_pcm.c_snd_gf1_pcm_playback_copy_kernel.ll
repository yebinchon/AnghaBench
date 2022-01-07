; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_copy_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_copy_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @snd_gf1_pcm_playback_copy_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_copy_kernel(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_runtime*, align 8
  %13 = alloca %struct.gus_pcm_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %12, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 1
  %21 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %20, align 8
  store %struct.gus_pcm_private* %21, %struct.gus_pcm_private** %13, align 8
  %22 = load i64, i64* %11, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @get_bpos(%struct.gus_pcm_private* %24, i32 %25, i64 %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %5
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @memcpy(i64 %40, i8* %41, i32 %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @playback_copy_ack(%struct.snd_pcm_substream* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %34, %31
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @get_bpos(%struct.gus_pcm_private*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @playback_copy_ack(%struct.snd_pcm_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
