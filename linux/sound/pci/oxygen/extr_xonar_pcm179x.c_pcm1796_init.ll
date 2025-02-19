; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_pcm1796_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32**, i32, i64, i32 }

@PCM1796_FMT_24_I2S = common dso_local global i32 0, align 4
@PCM1796_ATLD = common dso_local global i32 0, align 4
@PCM1796_REG_BASE = common dso_local global i32 0, align 4
@PCM1796_MUTE = common dso_local global i32 0, align 4
@PCM1796_FLT_SHARP = common dso_local global i32 0, align 4
@PCM1796_ATS_1 = common dso_local global i32 0, align 4
@PCM1796_OS_64 = common dso_local global i32 0, align 4
@PCM1796_OS_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @pcm1796_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm1796_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load i32, i32* @PCM1796_FMT_24_I2S, align 4
  %8 = load i32, i32* @PCM1796_ATLD, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %11 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @PCM1796_REG_BASE, align 4
  %16 = sub nsw i32 18, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %9, i32* %18, align 4
  %19 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %20 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @PCM1796_MUTE, align 4
  %25 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @PCM1796_REG_BASE, align 4
  %31 = sub nsw i32 18, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %24
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %23, %1
  %37 = load i32, i32* @PCM1796_FLT_SHARP, align 4
  %38 = load i32, i32* @PCM1796_ATS_1, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %41 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @PCM1796_REG_BASE, align 4
  %46 = sub nsw i32 19, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %39, i32* %48, align 4
  %49 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %50 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load i32, i32* @PCM1796_OS_64, align 4
  br label %57

55:                                               ; preds = %36
  %56 = load i32, i32* @PCM1796_OS_128, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %60 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @PCM1796_REG_BASE, align 4
  %65 = sub nsw i32 20, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %58, i32* %67, align 4
  %68 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %69 = call i32 @pcm1796_registers_init(%struct.oxygen* %68)
  %70 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %71 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %70, i32 0, i32 1
  store i32 48000, i32* %71, align 8
  ret void
}

declare dso_local i32 @pcm1796_registers_init(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
