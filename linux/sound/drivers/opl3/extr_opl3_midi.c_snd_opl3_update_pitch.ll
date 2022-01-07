; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_update_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_update_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32 (%struct.snd_opl3*, i16, i8)*, %struct.snd_opl3_voice* }
%struct.snd_opl3_voice = type { i8, i64, i32*, i32 }

@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@OPL3_LEFT = common dso_local global i16 0, align 2
@OPL3_RIGHT = common dso_local global i16 0, align 2
@OPL3_REG_FNUM_LOW = common dso_local global i8 0, align 1
@OPL3_KEYON_BIT = common dso_local global i8 0, align 1
@OPL3_REG_KEYON_BLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, i32)* @snd_opl3_update_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_update_pitch(%struct.snd_opl3* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.snd_opl3_voice*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_OPL3_VOICES, align 4
  %13 = icmp sge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %20 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %19, i32 0, i32 2
  %21 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %21, i64 %23
  store %struct.snd_opl3_voice* %24, %struct.snd_opl3_voice** %10, align 8
  %25 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %10, align 8
  %26 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %100

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i16, i16* @OPL3_LEFT, align 2
  store i16 %35, i16* %5, align 2
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  br label %44

38:                                               ; preds = %30
  %39 = load i16, i16* @OPL3_RIGHT, align 2
  store i16 %39, i16* %5, align 2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %42 = sub nsw i32 %40, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %10, align 8
  %46 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %10, align 8
  %49 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @snd_opl3_calc_pitch(i8* %8, i8* %9, i32 %47, i32* %50)
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = load i8, i8* @OPL3_REG_FNUM_LOW, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = or i32 %53, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %7, align 2
  %61 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %62 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %61, i32 0, i32 1
  %63 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %62, align 8
  %64 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %65 = load i16, i16* %7, align 2
  %66 = load i8, i8* %8, align 1
  %67 = call i32 %63(%struct.snd_opl3* %64, i16 zeroext %65, i8 zeroext %66)
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %10, align 8
  %70 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %69, i32 0, i32 0
  store i8 %68, i8* %70, align 8
  %71 = load i8, i8* @OPL3_KEYON_BIT, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %9, align 1
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i32
  %79 = load i8, i8* @OPL3_REG_KEYON_BLOCK, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %80, %82
  %84 = or i32 %78, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %7, align 2
  %86 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %87 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %86, i32 0, i32 1
  %88 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %87, align 8
  %89 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %90 = load i16, i16* %7, align 2
  %91 = load i8, i8* %9, align 1
  %92 = call i32 %88(%struct.snd_opl3* %89, i16 zeroext %90, i8 zeroext %91)
  %93 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %94 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %10, align 8
  %99 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %44, %29, %17
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_opl3_calc_pitch(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
