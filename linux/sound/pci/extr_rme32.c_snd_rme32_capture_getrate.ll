; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_getrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32 }

@RME32_RCR_LOCK = common dso_local global i32 0, align 4
@RME32_RCR_ERF = common dso_local global i32 0, align 4
@RME32_RCR_BITPOS_F0 = common dso_local global i32 0, align 4
@RME32_RCR_BITPOS_F1 = common dso_local global i32 0, align 4
@RME32_RCR_BITPOS_F2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme32*, i32*)* @snd_rme32_capture_getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_capture_getrate(%struct.rme32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rme32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.rme32* %0, %struct.rme32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rme32*, %struct.rme32** %4, align 8
  %9 = getelementptr inbounds %struct.rme32, %struct.rme32* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RME32_RCR_LOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.rme32*, %struct.rme32** %4, align 8
  %18 = getelementptr inbounds %struct.rme32, %struct.rme32* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RME32_RCR_ERF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %72

24:                                               ; preds = %16
  %25 = load %struct.rme32*, %struct.rme32** %4, align 8
  %26 = getelementptr inbounds %struct.rme32, %struct.rme32* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RME32_RCR_BITPOS_F0, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 1
  %31 = load %struct.rme32*, %struct.rme32** %4, align 8
  %32 = getelementptr inbounds %struct.rme32, %struct.rme32* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RME32_RCR_BITPOS_F1, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 1
  %38 = add nsw i32 %30, %37
  %39 = load %struct.rme32*, %struct.rme32** %4, align 8
  %40 = getelementptr inbounds %struct.rme32, %struct.rme32* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RME32_RCR_BITPOS_F2, align 4
  %43 = ashr i32 %41, %42
  %44 = and i32 %43, 1
  %45 = shl i32 %44, 2
  %46 = add nsw i32 %38, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.rme32*, %struct.rme32** %4, align 8
  %48 = call i64 @RME32_PRO_WITH_8414(%struct.rme32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %24
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %58 [
    i32 0, label %52
    i32 1, label %52
    i32 2, label %52
    i32 3, label %53
    i32 4, label %54
    i32 5, label %55
    i32 6, label %56
    i32 7, label %57
  ]

52:                                               ; preds = %50, %50, %50
  store i32 -1, i32* %3, align 4
  br label %72

53:                                               ; preds = %50
  store i32 96000, i32* %3, align 4
  br label %72

54:                                               ; preds = %50
  store i32 88200, i32* %3, align 4
  br label %72

55:                                               ; preds = %50
  store i32 48000, i32* %3, align 4
  br label %72

56:                                               ; preds = %50
  store i32 44100, i32* %3, align 4
  br label %72

57:                                               ; preds = %50
  store i32 32000, i32* %3, align 4
  br label %72

58:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %72

59:                                               ; preds = %24
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %69 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %63
    i32 3, label %64
    i32 4, label %65
    i32 5, label %66
    i32 6, label %67
    i32 7, label %68
  ]

61:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %72

62:                                               ; preds = %59
  store i32 48000, i32* %3, align 4
  br label %72

63:                                               ; preds = %59
  store i32 44100, i32* %3, align 4
  br label %72

64:                                               ; preds = %59
  store i32 32000, i32* %3, align 4
  br label %72

65:                                               ; preds = %59
  store i32 48000, i32* %3, align 4
  br label %72

66:                                               ; preds = %59
  store i32 44100, i32* %3, align 4
  br label %72

67:                                               ; preds = %59
  store i32 44056, i32* %3, align 4
  br label %72

68:                                               ; preds = %59
  store i32 32000, i32* %3, align 4
  br label %72

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %67, %66, %65, %64, %63, %62, %61, %58, %57, %56, %55, %54, %53, %52, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @RME32_PRO_WITH_8414(%struct.rme32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
