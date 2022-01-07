; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_adjust_audio_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_adjust_audio_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_audio_level = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.vx_rmh = type { i32* }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_AUDIO_LEVEL_ADJUST = common dso_local global i32 0, align 4
@COMMAND_RECORD_MASK = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_DIGITAL_LEVEL = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MONITORING_LEVEL = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MUTE_LEVEL = common dso_local global i32 0, align 4
@AUDIO_IO_HAS_MUTE_LEVEL = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MUTE_MONITORING_1 = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MUTE_MONITORING_2 = common dso_local global i32 0, align 4
@AUDIO_IO_HAS_MUTE_MONITORING_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32, i32, %struct.vx_audio_level*)* @vx_adjust_audio_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_adjust_audio_level(%struct.vx_core* %0, i32 %1, i32 %2, %struct.vx_audio_level* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vx_audio_level*, align 8
  %10 = alloca %struct.vx_rmh, align 8
  store %struct.vx_core* %0, %struct.vx_core** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vx_audio_level* %3, %struct.vx_audio_level** %9, align 8
  %11 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %12 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %135

20:                                               ; preds = %4
  %21 = load i32, i32* @CMD_AUDIO_LEVEL_ADJUST, align 4
  %22 = call i32 @vx_init_rmh(%struct.vx_rmh* %10, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @COMMAND_RECORD_MASK, align 4
  %27 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %42 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %32
  %46 = load i32, i32* @VALID_AUDIO_IO_DIGITAL_LEVEL, align 4
  %47 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %53 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %45, %32
  %61 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %62 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* @VALID_AUDIO_IO_MONITORING_LEVEL, align 4
  %67 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %73 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 10
  %77 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %65, %60
  %83 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %84 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load i32, i32* @VALID_AUDIO_IO_MUTE_LEVEL, align 4
  %89 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %95 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load i32, i32* @AUDIO_IO_HAS_MUTE_LEVEL, align 4
  %100 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %87
  br label %106

106:                                              ; preds = %105, %82
  %107 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %108 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %106
  %112 = load i32, i32* @VALID_AUDIO_IO_MUTE_MONITORING_1, align 4
  %113 = load i32, i32* @VALID_AUDIO_IO_MUTE_MONITORING_2, align 4
  %114 = or i32 %112, %113
  %115 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load %struct.vx_audio_level*, %struct.vx_audio_level** %9, align 8
  %121 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load i32, i32* @AUDIO_IO_HAS_MUTE_MONITORING_1, align 4
  %126 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %111
  br label %132

132:                                              ; preds = %131, %106
  %133 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %134 = call i32 @vx_send_msg(%struct.vx_core* %133, %struct.vx_rmh* %10)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %132, %17
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
