; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_getrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32 }

@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@RME96_WCR_BITPOS_FREQ_0 = common dso_local global i32 0, align 4
@RME96_WCR_BITPOS_FREQ_1 = common dso_local global i32 0, align 4
@RME96_WCR_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*)* @snd_rme96_playback_getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_getrate(%struct.rme96* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  %6 = load %struct.rme96*, %struct.rme96** %3, align 8
  %7 = getelementptr inbounds %struct.rme96, %struct.rme96* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RME96_WCR_MASTER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.rme96*, %struct.rme96** %3, align 8
  %14 = call i64 @snd_rme96_getinputtype(%struct.rme96* %13)
  %15 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.rme96*, %struct.rme96** %3, align 8
  %19 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %17, %12, %1
  %24 = load %struct.rme96*, %struct.rme96** %3, align 8
  %25 = getelementptr inbounds %struct.rme96, %struct.rme96* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RME96_WCR_BITPOS_FREQ_0, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 1
  %30 = load %struct.rme96*, %struct.rme96** %3, align 8
  %31 = getelementptr inbounds %struct.rme96, %struct.rme96* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RME96_WCR_BITPOS_FREQ_1, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 1
  %37 = add nsw i32 %29, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %42 [
    i32 1, label %39
    i32 2, label %40
    i32 3, label %41
  ]

39:                                               ; preds = %23
  store i32 32000, i32* %4, align 4
  br label %43

40:                                               ; preds = %23
  store i32 44100, i32* %4, align 4
  br label %43

41:                                               ; preds = %23
  store i32 48000, i32* %4, align 4
  br label %43

42:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %57

43:                                               ; preds = %41, %40, %39
  %44 = load %struct.rme96*, %struct.rme96** %3, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RME96_WCR_DS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 1
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %42, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
