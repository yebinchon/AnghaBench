; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { i32, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @emu8k_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu8k_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %8, align 8
  store %struct.snd_emu8k_pcm* %9, %struct.snd_emu8k_pcm** %3, align 8
  %10 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %18 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @stop_voice(%struct.snd_emu8k_pcm* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %30 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %35 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @emu8k_close_dram(%struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %45 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @snd_util_mem_free(i32 %43, i32* %46)
  %48 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %49 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @stop_voice(%struct.snd_emu8k_pcm*, i32) #1

declare dso_local i32 @emu8k_close_dram(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_util_mem_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
