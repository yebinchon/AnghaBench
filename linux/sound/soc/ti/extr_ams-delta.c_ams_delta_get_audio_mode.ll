; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_get_audio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_get_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_soc_card = type { %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@AMS_DELTA_MOUTHPIECE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@AMS_DELTA_EARPIECE = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@AMS_DELTA_MICROPHONE = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@AMS_DELTA_SPEAKER = common dso_local global i16 0, align 2
@ams_delta_audio_agc = common dso_local global i16 0, align 2
@AMS_DELTA_AGC = common dso_local global i16 0, align 2
@ams_delta_audio_mode = common dso_local global i32 0, align 4
@ams_delta_audio_mode_pins = common dso_local global i16* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ams_delta_get_audio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_get_audio_mode(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_card* %11, %struct.snd_soc_card** %6, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %12, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %7, align 8
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %15 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @AMS_DELTA_MOUTHPIECE, align 2
  %18 = zext i16 %17 to i32
  %19 = shl i32 %16, %18
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %21 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @AMS_DELTA_EARPIECE, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %22, %24
  %26 = or i32 %19, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %8, align 2
  %28 = load i16, i16* %8, align 2
  %29 = icmp ne i16 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %32 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @AMS_DELTA_MICROPHONE, align 2
  %35 = zext i16 %34 to i32
  %36 = shl i32 %33, %35
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %8, align 2
  br label %62

41:                                               ; preds = %2
  %42 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %43 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @AMS_DELTA_MICROPHONE, align 2
  %46 = zext i16 %45 to i32
  %47 = shl i32 %44, %46
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %49 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @AMS_DELTA_SPEAKER, align 2
  %52 = zext i16 %51 to i32
  %53 = shl i32 %50, %52
  %54 = or i32 %47, %53
  %55 = load i16, i16* @ams_delta_audio_agc, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @AMS_DELTA_AGC, align 2
  %58 = zext i16 %57 to i32
  %59 = shl i32 %56, %58
  %60 = or i32 %54, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  br label %62

62:                                               ; preds = %41, %30
  store i16 0, i16* %9, align 2
  br label %63

63:                                               ; preds = %82, %62
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = load i32, i32* @ams_delta_audio_mode, align 4
  %67 = call zeroext i16 @ARRAY_SIZE(i32 %66)
  %68 = zext i16 %67 to i32
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16*, i16** @ams_delta_audio_mode_pins, align 8
  %74 = load i16, i16* %9, align 2
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  %83 = load i16, i16* %9, align 2
  %84 = add i16 %83, 1
  store i16 %84, i16* %9, align 2
  br label %63

85:                                               ; preds = %80, %63
  %86 = load i16, i16* %9, align 2
  %87 = zext i16 %86 to i32
  %88 = load i32, i32* @ams_delta_audio_mode, align 4
  %89 = call zeroext i16 @ARRAY_SIZE(i32 %88)
  %90 = zext i16 %89 to i32
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %103

95:                                               ; preds = %85
  %96 = load i16, i16* %9, align 2
  %97 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i16*, i16** %100, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 0
  store i16 %96, i16* %102, align 2
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local zeroext i16 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
