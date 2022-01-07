; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_update_analog_audio_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_update_analog_audio_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32*, i32, i32*, i32, i64*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"hr222_update_analog_audio_level(%s chan=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@HR222_LINE_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_MICRO_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %12, i32 0, i32 7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %3
  %26 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MIN, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MIN, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @HR222_MICRO_CAPTURE_LEVEL_MIN, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @hr222_set_hw_capture_level(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %89

63:                                               ; preds = %3
  %64 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %82

80:                                               ; preds = %63
  %81 = load i32, i32* @HR222_LINE_PLAYBACK_LEVEL_MIN, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %72
  %83 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @hr222_set_hw_playback_level(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %55
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @hr222_set_hw_capture_level(i32, i32, i32, i32) #1

declare dso_local i32 @hr222_set_hw_playback_level(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
