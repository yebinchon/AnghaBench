; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_voice_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_voice_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32 (%struct.snd_opl3*, i16, i32)* }
%struct.snd_opl3_drum_voice = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@snd_opl3_regmap = common dso_local global i8** null, align 8
@OPL3_LEFT = common dso_local global i8 0, align 1
@OPL3_REG_AM_VIB = common dso_local global i8 0, align 1
@OPL3_REG_KSL_LEVEL = common dso_local global i8 0, align 1
@OPL3_REG_ATTACK_DECAY = common dso_local global i8 0, align 1
@OPL3_REG_SUSTAIN_RELEASE = common dso_local global i8 0, align 1
@OPL3_REG_FEEDBACK_CONNECTION = common dso_local global i8 0, align 1
@OPL3_REG_WAVE_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, %struct.snd_opl3_drum_voice*)* @snd_opl3_drum_voice_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_drum_voice_set(%struct.snd_opl3* %0, %struct.snd_opl3_drum_voice* %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_opl3_drum_voice*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store %struct.snd_opl3_drum_voice* %1, %struct.snd_opl3_drum_voice** %4, align 8
  %8 = load i8**, i8*** @snd_opl3_regmap, align 8
  %9 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %10 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8*, i8** %8, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %15 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %5, align 1
  %19 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %20 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* @OPL3_LEFT, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @OPL3_REG_AM_VIB, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = or i32 %24, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  %32 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %33 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %33, align 8
  %35 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %36 = load i16, i16* %7, align 2
  %37 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %38 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %34(%struct.snd_opl3* %35, i16 zeroext %36, i32 %39)
  %41 = load i8, i8* @OPL3_LEFT, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @OPL3_REG_KSL_LEVEL, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %44, %46
  %48 = or i32 %42, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %7, align 2
  %50 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %51 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %50, i32 0, i32 0
  %52 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %51, align 8
  %53 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %54 = load i16, i16* %7, align 2
  %55 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %56 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %52(%struct.snd_opl3* %53, i16 zeroext %54, i32 %57)
  %59 = load i8, i8* @OPL3_LEFT, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @OPL3_REG_ATTACK_DECAY, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = or i32 %60, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %7, align 2
  %68 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %69 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %68, i32 0, i32 0
  %70 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %69, align 8
  %71 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %72 = load i16, i16* %7, align 2
  %73 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %74 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 %70(%struct.snd_opl3* %71, i16 zeroext %72, i32 %75)
  %77 = load i8, i8* @OPL3_LEFT, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @OPL3_REG_SUSTAIN_RELEASE, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %80, %82
  %84 = or i32 %78, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %7, align 2
  %86 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %87 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %86, i32 0, i32 0
  %88 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %87, align 8
  %89 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %90 = load i16, i16* %7, align 2
  %91 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %92 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %88(%struct.snd_opl3* %89, i16 zeroext %90, i32 %93)
  %95 = load i8, i8* @OPL3_LEFT, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @OPL3_REG_FEEDBACK_CONNECTION, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %6, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = or i32 %96, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %7, align 2
  %104 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %105 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %104, i32 0, i32 0
  %106 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %105, align 8
  %107 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %108 = load i16, i16* %7, align 2
  %109 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %110 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %106(%struct.snd_opl3* %107, i16 zeroext %108, i32 %111)
  %113 = load i8, i8* @OPL3_LEFT, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @OPL3_REG_WAVE_SELECT, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %5, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %116, %118
  %120 = or i32 %114, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %7, align 2
  %122 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %123 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %122, i32 0, i32 0
  %124 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %123, align 8
  %125 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %126 = load i16, i16* %7, align 2
  %127 = load %struct.snd_opl3_drum_voice*, %struct.snd_opl3_drum_voice** %4, align 8
  %128 = getelementptr inbounds %struct.snd_opl3_drum_voice, %struct.snd_opl3_drum_voice* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 %124(%struct.snd_opl3* %125, i16 zeroext %126, i32 %129)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
