; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_getrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32 }

@RME32_WCR_BITPOS_FREQ_0 = common dso_local global i32 0, align 4
@RME32_WCR_BITPOS_FREQ_1 = common dso_local global i32 0, align 4
@RME32_WCR_DS_BM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme32*)* @snd_rme32_playback_getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_playback_getrate(%struct.rme32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rme32*, align 8
  %4 = alloca i32, align 4
  store %struct.rme32* %0, %struct.rme32** %3, align 8
  %5 = load %struct.rme32*, %struct.rme32** %3, align 8
  %6 = getelementptr inbounds %struct.rme32, %struct.rme32* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RME32_WCR_BITPOS_FREQ_0, align 4
  %9 = ashr i32 %7, %8
  %10 = and i32 %9, 1
  %11 = load %struct.rme32*, %struct.rme32** %3, align 8
  %12 = getelementptr inbounds %struct.rme32, %struct.rme32* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RME32_WCR_BITPOS_FREQ_1, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 1
  %17 = shl i32 %16, 1
  %18 = add nsw i32 %10, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %23 [
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
  ]

20:                                               ; preds = %1
  store i32 32000, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  store i32 44100, i32* %4, align 4
  br label %24

22:                                               ; preds = %1
  store i32 48000, i32* %4, align 4
  br label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

24:                                               ; preds = %22, %21, %20
  %25 = load %struct.rme32*, %struct.rme32** %3, align 8
  %26 = getelementptr inbounds %struct.rme32, %struct.rme32* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RME32_WCR_DS_BM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 1
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
