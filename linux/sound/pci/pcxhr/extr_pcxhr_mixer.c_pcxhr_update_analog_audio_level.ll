; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_update_analog_audio_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_update_analog_audio_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32*, i32*, i32, %struct.TYPE_2__*, i32, i64* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_IN_ANA_LEVEL = common dso_local global i32 0, align 4
@IO_NUM_REG_OUT_ANA_LEVEL = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"error update_analog_audio_level card(%d) is_capture(%d) err(%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*, i32, i32)* @pcxhr_update_analog_audio_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_update_analog_audio_level(%struct.snd_pcxhr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcxhr_rmh, align 8
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %12 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32, i32* @IO_NUM_REG_IN_ANA_LEVEL, align 4
  %17 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %28, i32* %31, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load i32, i32* @IO_NUM_REG_OUT_ANA_LEVEL, align 4
  %34 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %57

55:                                               ; preds = %32
  %56 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MIN, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MAX, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %15
  %65 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 2, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = shl i32 1, %70
  %72 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %10, i32 0, i32 1
  store i32 3, i32* %75, align 8
  %76 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %77 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pcxhr_send_msg(i32 %78, %struct.pcxhr_rmh* %10)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %64
  %83 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %89 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(i32, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
