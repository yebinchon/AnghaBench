; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_init_runtime_hw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_init_runtime_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_pcm_stream = type { i32, i32, i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_runtime*, %struct.snd_soc_pcm_stream*)* @dpcm_init_runtime_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpcm_init_runtime_hw(%struct.snd_pcm_runtime* %0, %struct.snd_soc_pcm_stream* %1) #0 {
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_stream*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %3, align 8
  store %struct.snd_soc_pcm_stream* %1, %struct.snd_soc_pcm_stream** %4, align 8
  %5 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i32 %7, i32* %10, align 4
  %11 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  %15 = call i32 @min_not_zero(i32 %13, i32 %14)
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %52

45:                                               ; preds = %2
  %46 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %4, align 8
  %54 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  ret void
}

declare dso_local i32 @min_not_zero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
