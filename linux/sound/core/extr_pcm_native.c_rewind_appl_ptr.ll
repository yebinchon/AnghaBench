; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_rewind_appl_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_rewind_appl_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i64, i64)* @rewind_appl_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rewind_appl_ptr(%struct.snd_pcm_substream* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %50

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @pcm_lib_apply_appl_ptr(%struct.snd_pcm_substream* %40, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i64 [ 0, %45 ], [ %47, %46 ]
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %16
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @pcm_lib_apply_appl_ptr(%struct.snd_pcm_substream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
