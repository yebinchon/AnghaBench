; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages_for_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %40, %5
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %23, align 8
  store %struct.snd_pcm_substream* %24, %struct.snd_pcm_substream** %11, align 8
  br label %25

25:                                               ; preds = %35, %16
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %27 = icmp ne %struct.snd_pcm_substream* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %29, i32 %30, i8* %31, i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %28
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %37, align 8
  store %struct.snd_pcm_substream* %38, %struct.snd_pcm_substream** %11, align 8
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
