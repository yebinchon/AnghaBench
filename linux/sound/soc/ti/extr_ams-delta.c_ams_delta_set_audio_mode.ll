; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_set_audio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_ams-delta.c_ams_delta_set_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.snd_soc_card = type { %struct.snd_soc_dapm_context }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_enum = type { i64 }

@cx20442_codec = common dso_local global %struct.TYPE_8__* null, align 8
@EUNATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ams_delta_audio_mode_pins = common dso_local global i16* null, align 8
@AMS_DELTA_MOUTHPIECE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@AMS_DELTA_EARPIECE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@AMS_DELTA_MICROPHONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@AMS_DELTA_SPEAKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@AMS_DELTA_AGC = common dso_local global i32 0, align 4
@ams_delta_audio_agc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"AGCIN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ams_delta_set_audio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_set_audio_mode(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %6, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_enum*
  store %struct.soc_enum* %19, %struct.soc_enum** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cx20442_codec, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EUNATCH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %186

29:                                               ; preds = %2
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %38 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %186

44:                                               ; preds = %29
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %46 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %45)
  %47 = load i16*, i16** @ams_delta_audio_mode_pins, align 8
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i16, i16* %47, i64 %54
  %56 = load i16, i16* %55, align 2
  store i16 %56, i16* %9, align 2
  %57 = load i16, i16* %9, align 2
  %58 = zext i16 %57 to i32
  %59 = load i32, i32* @AMS_DELTA_MOUTHPIECE, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %68 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %75 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %79

76:                                               ; preds = %70
  %77 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %78 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i32
  %83 = load i32, i32* @AMS_DELTA_EARPIECE, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %92 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %99 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %103

100:                                              ; preds = %94
  %101 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %102 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %80
  %105 = load i16, i16* %9, align 2
  %106 = zext i16 %105 to i32
  %107 = load i32, i32* @AMS_DELTA_MICROPHONE, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %116 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %104
  store i32 1, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %123 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %127

124:                                              ; preds = %118
  %125 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %126 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %104
  %129 = load i16, i16* %9, align 2
  %130 = zext i16 %129 to i32
  %131 = load i32, i32* @AMS_DELTA_SPEAKER, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %140 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %128
  store i32 1, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %147 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %151

148:                                              ; preds = %142
  %149 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %150 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %145
  br label %152

152:                                              ; preds = %151, %128
  %153 = load i16, i16* %9, align 2
  %154 = zext i16 %153 to i32
  %155 = load i32, i32* @AMS_DELTA_AGC, align 4
  %156 = shl i32 1, %155
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @ams_delta_audio_agc, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %152
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* @ams_delta_audio_agc, align 4
  store i32 1, i32* %11, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %171 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %175

172:                                              ; preds = %165
  %173 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %174 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %169
  br label %176

176:                                              ; preds = %175, %152
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %181 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %184 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %183)
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %41, %26
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
