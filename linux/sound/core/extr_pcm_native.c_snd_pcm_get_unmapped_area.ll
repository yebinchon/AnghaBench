; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @snd_pcm_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_pcm_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_file*, align 8
  %13 = alloca %struct.snd_pcm_substream*, align 8
  %14 = alloca %struct.snd_pcm_runtime*, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %17, align 8
  store %struct.snd_pcm_file* %18, %struct.snd_pcm_file** %12, align 8
  %19 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %12, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %20, align 8
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %13, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %23, align 8
  store %struct.snd_pcm_runtime* %24, %struct.snd_pcm_runtime** %14, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  switch i64 %28, label %37 [
    i64 128, label %29
    i64 129, label %33
  ]

29:                                               ; preds = %5
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %43

33:                                               ; preds = %5
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %43

37:                                               ; preds = %5
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %37, %33, %29
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
