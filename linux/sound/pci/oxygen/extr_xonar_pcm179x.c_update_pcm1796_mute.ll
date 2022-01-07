; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i64, %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32, i32** }

@PCM1796_REG_BASE = common dso_local global i32 0, align 4
@PCM1796_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_pcm1796_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm1796_mute(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 1
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %7, align 8
  store %struct.xonar_pcm179x* %8, %struct.xonar_pcm179x** %3, align 8
  %9 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @PCM1796_REG_BASE, align 4
  %15 = sub nsw i32 18, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %20 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @PCM1796_MUTE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @PCM1796_MUTE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %23
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %36 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pcm1796_write_cached(%struct.oxygen* %40, i32 %41, i32 18, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %33

47:                                               ; preds = %33
  ret void
}

declare dso_local i32 @pcm1796_write_cached(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
