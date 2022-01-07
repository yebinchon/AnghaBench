; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_vol_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_vol_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32 (%struct.snd_opl3*, i16, i8)* }
%struct.snd_opl3_drum_voice = type { i64, i64, i8, i8 }
%struct.snd_midi_channel = type { i32 }

@snd_opl3_regmap = common dso_local global i8** null, align 8
@OPL3_LEFT = common dso_local global i8 0, align 1
@OPL3_REG_KSL_LEVEL = common dso_local global i8 0, align 1
@OPL3_STEREO_BITS = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_RIGHT = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_LEFT = common dso_local global i8 0, align 1
@OPL3_REG_FEEDBACK_CONNECTION = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, %struct.snd_opl3_drum_voice*, i32, %struct.snd_midi_channel*)* @snd_opl3_drum_vol_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_drum_vol_set(%struct.snd_opl3* %0, %struct.snd_opl3_drum_voice* %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca %struct.snd_opl3*, align 8
  %6 = alloca %struct.snd_opl3_drum_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  store %struct.snd_opl3* %0, %struct.snd_opl3** %5, align 8
  store %struct.snd_opl3_drum_voice* %1, %struct.snd_opl3_drum_voice** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %13 = load i8**, i8*** @snd_opl3_regmap, align 8
  %14 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %6, align 8
  %15 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %6, align 8
  %20 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %9, align 1
  %24 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %6, align 8
  %25 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  store i8 %27, i8* %10, align 1
  %28 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %6, align 8
  %29 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %28, i32 0, i32 2
  %30 = load i8, i8* %29, align 8
  store i8 %30, i8* %11, align 1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %33 = call i32 @snd_opl3_calc_volume(i8* %11, i32 %31, %struct.snd_midi_channel* %32)
  %34 = load i8, i8* @OPL3_LEFT, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @OPL3_REG_KSL_LEVEL, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %37, %39
  %41 = or i32 %35, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %12, align 2
  %43 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %44 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %43, i32 0, i32 0
  %45 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %44, align 8
  %46 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %47 = load i16, i16* %12, align 2
  %48 = load i8, i8* %11, align 1
  %49 = call i32 %45(%struct.snd_opl3* %46, i16 zeroext %47, i8 zeroext %48)
  %50 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %6, align 8
  %51 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %50, i32 0, i32 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @OPL3_STEREO_BITS, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %11, align 1
  %58 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %59 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 43
  br i1 %61, label %62, label %70

62:                                               ; preds = %4
  %63 = load i8, i8* @OPL3_VOICE_TO_RIGHT, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, -1
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %11, align 1
  br label %70

70:                                               ; preds = %62, %4
  %71 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %72 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 85
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8, i8* @OPL3_VOICE_TO_LEFT, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, -1
  %79 = load i8, i8* %11, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %11, align 1
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i8, i8* @OPL3_LEFT, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @OPL3_REG_FEEDBACK_CONNECTION, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %87, %89
  %91 = or i32 %85, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %12, align 2
  %93 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %94 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %93, i32 0, i32 0
  %95 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %94, align 8
  %96 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %97 = load i16, i16* %12, align 2
  %98 = load i8, i8* %11, align 1
  %99 = call i32 %95(%struct.snd_opl3* %96, i16 zeroext %97, i8 zeroext %98)
  ret void
}

declare dso_local i32 @snd_opl3_calc_volume(i8*, i32, %struct.snd_midi_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
