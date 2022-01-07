; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32, i64, i32 (%struct.snd_opl3*, i16, i32)*, i32 }

@OPL3_HW_OPL3 = common dso_local global i64 0, align 8
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@OPL3_LEFT = common dso_local global i16 0, align 2
@OPL3_RIGHT = common dso_local global i16 0, align 2
@OPL3_REG_KSL_LEVEL = common dso_local global i16 0, align 2
@snd_opl3_regmap = common dso_local global i16** null, align 8
@OPL3_TOTAL_LEVEL_MASK = common dso_local global i32 0, align 4
@OPL3_REG_KEYON_BLOCK = common dso_local global i8 0, align 1
@SNDRV_DM_FM_MODE_OPL2 = common dso_local global i32 0, align 4
@OPL3_REG_TEST = common dso_local global i16 0, align 2
@OPL3_ENABLE_WAVE_SELECT = common dso_local global i32 0, align 4
@OPL3_REG_PERCUSSION = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_reset(%struct.snd_opl3* %0) #0 {
  %2 = alloca %struct.snd_opl3*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %2, align 8
  %8 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %9 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OPL3_HW_OPL3, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @MAX_OPL2_VOICES, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @MAX_OPL3_VOICES, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %97, %17
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i16, i16* @OPL3_LEFT, align 2
  store i16 %28, i16* %4, align 2
  %29 = load i32, i32* %7, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  br label %37

31:                                               ; preds = %23
  %32 = load i16, i16* @OPL3_RIGHT, align 2
  store i16 %32, i16* %4, align 2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %35 = sub nsw i32 %33, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %5, align 1
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @OPL3_REG_KSL_LEVEL, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16**, i16*** @snd_opl3_regmap, align 8
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i16*, i16** %42, i64 %44
  %46 = load i16*, i16** %45, align 8
  %47 = getelementptr inbounds i16, i16* %46, i64 0
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = add nsw i32 %41, %49
  %51 = or i32 %39, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %3, align 2
  %53 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %54 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %53, i32 0, i32 3
  %55 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %54, align 8
  %56 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %57 = load i16, i16* %3, align 2
  %58 = load i32, i32* @OPL3_TOTAL_LEVEL_MASK, align 4
  %59 = call i32 %55(%struct.snd_opl3* %56, i16 zeroext %57, i32 %58)
  %60 = load i16, i16* %4, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @OPL3_REG_KSL_LEVEL, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16**, i16*** @snd_opl3_regmap, align 8
  %65 = load i8, i8* %5, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i16*, i16** %64, i64 %66
  %68 = load i16*, i16** %67, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 1
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %63, %71
  %73 = or i32 %61, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %3, align 2
  %75 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %76 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %75, i32 0, i32 3
  %77 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %76, align 8
  %78 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %79 = load i16, i16* %3, align 2
  %80 = load i32, i32* @OPL3_TOTAL_LEVEL_MASK, align 4
  %81 = call i32 %77(%struct.snd_opl3* %78, i16 zeroext %79, i32 %80)
  %82 = load i16, i16* %4, align 2
  %83 = zext i16 %82 to i32
  %84 = load i8, i8* @OPL3_REG_KEYON_BLOCK, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %85, %87
  %89 = or i32 %83, %88
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %3, align 2
  %91 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %92 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %91, i32 0, i32 3
  %93 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %92, align 8
  %94 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %95 = load i16, i16* %3, align 2
  %96 = call i32 %93(%struct.snd_opl3* %94, i16 zeroext %95, i32 0)
  br label %97

97:                                               ; preds = %37
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %19

100:                                              ; preds = %19
  %101 = load i32, i32* @MAX_OPL2_VOICES, align 4
  %102 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %103 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @SNDRV_DM_FM_MODE_OPL2, align 4
  %105 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %106 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %108 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %107, i32 0, i32 3
  %109 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %108, align 8
  %110 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %111 = load i16, i16* @OPL3_LEFT, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* @OPL3_REG_TEST, align 2
  %114 = zext i16 %113 to i32
  %115 = or i32 %112, %114
  %116 = trunc i32 %115 to i16
  %117 = load i32, i32* @OPL3_ENABLE_WAVE_SELECT, align 4
  %118 = call i32 %109(%struct.snd_opl3* %110, i16 zeroext %116, i32 %117)
  %119 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %120 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %119, i32 0, i32 3
  %121 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %120, align 8
  %122 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %123 = load i16, i16* @OPL3_LEFT, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @OPL3_REG_PERCUSSION, align 2
  %126 = zext i16 %125 to i32
  %127 = or i32 %124, %126
  %128 = trunc i32 %127 to i16
  %129 = call i32 %121(%struct.snd_opl3* %122, i16 zeroext %128, i32 0)
  %130 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %131 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
