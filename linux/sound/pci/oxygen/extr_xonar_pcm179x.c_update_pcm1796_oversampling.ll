; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_oversampling.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_oversampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32, i32, i32 }

@PCM1796_OS_128 = common dso_local global i32 0, align 4
@PCM1796_OS_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_pcm1796_oversampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm1796_oversampling(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 0
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %7, align 8
  store %struct.xonar_pcm179x* %8, %struct.xonar_pcm179x** %3, align 8
  %9 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 48000
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %15 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @PCM1796_OS_128, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @PCM1796_OS_64, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pcm1796_write_cached(%struct.oxygen* %30, i32 %31, i32 20, i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %23

37:                                               ; preds = %23
  ret void
}

declare dso_local i32 @pcm1796_write_cached(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
