; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_init_audio_levels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_init_audio_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32**, i32*, i32*, i32, %struct.TYPE_2__*, i32*, i8**, i64, i32*, i8***, i64 }
%struct.TYPE_2__ = type { i64 }

@PCXHR_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@PCXHR_DIGITAL_ZERO_LEVEL = common dso_local global i8* null, align 8
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS_48000 = common dso_local global i32 0, align 4
@HR222_LINE_CAPTURE_ZERO_LEVEL = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_ZERO_LEVEL = common dso_local global i32 0, align 4
@PCXHR_LINE_CAPTURE_ZERO_LEVEL = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_ZERO_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcxhr*)* @pcxhr_init_audio_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_init_audio_levels(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca %struct.snd_pcxhr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %89, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %92

8:                                                ; preds = %5
  %9 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %40, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PCXHR_PLAYBACK_STREAMS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 1, i32* %28, align 4
  %29 = load i8*, i8** @PCXHR_DIGITAL_ZERO_LEVEL, align 8
  %30 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %30, i32 0, i32 9
  %32 = load i8***, i8**** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8**, i8*** %32, i64 %34
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %29, i8** %39, align 8
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %45 = load i32, i32* @IEC958_AES0_PRO_FS_48000, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %48 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %52 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr* %58, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %57, %43
  br label %62

62:                                               ; preds = %61, %8
  %63 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %64 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load i8*, i8** @PCXHR_DIGITAL_ZERO_LEVEL, align 8
  %69 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %70 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %69, i32 0, i32 6
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %76 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %75, i32 0, i32 3
  store i32 1, i32* %76, align 8
  %77 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %78 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %77, i32 0, i32 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr* %84, i32 1, i32 %85)
  br label %87

87:                                               ; preds = %83, %67
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %5

92:                                               ; preds = %5
  ret void
}

declare dso_local i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
