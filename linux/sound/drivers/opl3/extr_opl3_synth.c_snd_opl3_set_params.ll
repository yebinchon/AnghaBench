; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32 (%struct.snd_opl3*, i32, i8)* }
%struct.snd_dm_fm_params = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@OPL3_KEYBOARD_SPLIT = common dso_local global i8 0, align 1
@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_KBD_SPLIT = common dso_local global i32 0, align 4
@OPL3_TREMOLO_DEPTH = common dso_local global i8 0, align 1
@OPL3_VIBRATO_DEPTH = common dso_local global i8 0, align 1
@OPL3_PERCUSSION_ENABLE = common dso_local global i8 0, align 1
@OPL3_BASSDRUM_ON = common dso_local global i8 0, align 1
@OPL3_SNAREDRUM_ON = common dso_local global i8 0, align 1
@OPL3_TOMTOM_ON = common dso_local global i8 0, align 1
@OPL3_CYMBAL_ON = common dso_local global i8 0, align 1
@OPL3_HIHAT_ON = common dso_local global i8 0, align 1
@OPL3_REG_PERCUSSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, %struct.snd_dm_fm_params*)* @snd_opl3_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_set_params(%struct.snd_opl3* %0, %struct.snd_dm_fm_params* %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_dm_fm_params*, align 8
  %5 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store %struct.snd_dm_fm_params* %1, %struct.snd_dm_fm_params** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %7 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8, i8* @OPL3_KEYBOARD_SPLIT, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %19 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %18, i32 0, i32 1
  %20 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %19, align 8
  %21 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %22 = load i32, i32* @OPL3_LEFT, align 4
  %23 = load i32, i32* @OPL3_REG_KBD_SPLIT, align 4
  %24 = or i32 %22, %23
  %25 = load i8, i8* %5, align 1
  %26 = call i32 %20(%struct.snd_opl3* %21, i32 %24, i8 zeroext %25)
  store i8 0, i8* %5, align 1
  %27 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %28 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i8, i8* @OPL3_TREMOLO_DEPTH, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  br label %38

38:                                               ; preds = %31, %17
  %39 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %40 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i8, i8* @OPL3_VIBRATO_DEPTH, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %5, align 1
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %52 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i8, i8* @OPL3_PERCUSSION_ENABLE, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %5, align 1
  %62 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %63 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %50
  %65 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %66 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %69 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i8, i8* @OPL3_BASSDRUM_ON, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %5, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %5, align 1
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %81 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8, i8* @OPL3_SNAREDRUM_ON, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %5, align 1
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %93 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8, i8* @OPL3_TOMTOM_ON, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %5, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %5, align 1
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %105 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i8, i8* @OPL3_CYMBAL_ON, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* %5, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %112, %110
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %5, align 1
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.snd_dm_fm_params*, %struct.snd_dm_fm_params** %4, align 8
  %117 = getelementptr inbounds %struct.snd_dm_fm_params, %struct.snd_dm_fm_params* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8, i8* @OPL3_HIHAT_ON, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %124, %122
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %5, align 1
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %129 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %128, i32 0, i32 1
  %130 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %129, align 8
  %131 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %132 = load i32, i32* @OPL3_LEFT, align 4
  %133 = load i32, i32* @OPL3_REG_PERCUSSION, align 4
  %134 = or i32 %132, %133
  %135 = load i8, i8* %5, align 1
  %136 = call i32 %130(%struct.snd_opl3* %131, i32 %134, i8 zeroext %135)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
