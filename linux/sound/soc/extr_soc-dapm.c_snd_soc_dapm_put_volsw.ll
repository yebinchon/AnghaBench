; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_soc_dapm_context = type { i32, %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dapm_update* }
%struct.snd_soc_dapm_update = type { i32, i32, i32, i32, i32, i32, i32, %struct.snd_kcontrol* }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }

@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ASoC: control %s field width limit exceeded\0A\00", align 1
@SND_SOC_NOPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_put_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.snd_soc_dapm_update, align 8
  %21 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %22)
  store %struct.snd_soc_dapm_context* %23, %struct.snd_soc_dapm_context** %5, align 8
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %24, i32 0, i32 1
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %25, align 8
  store %struct.snd_soc_card* %26, %struct.snd_soc_card** %6, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %30, %struct.soc_mixer_control** %7, align 8
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fls(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %46 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %48 = bitcast %struct.snd_soc_dapm_update* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 40, i1 false)
  store i32 0, i32* %21, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %2
  %70 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %71 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %75 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %73
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sub i32 %91, %92
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %90, %73
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %97 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %96, i32 0, i32 0
  %98 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %99 = call i32 @mutex_lock_nested(i32* %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = icmp ugt i64 %101, 16
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %108 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_warn(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %103, %95
  %113 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  %119 = call i32 @dapm_kcontrol_set_value(%struct.snd_kcontrol* %113, i32 %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @SND_SOC_NOPM, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %112
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %124, %125
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %129 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %127, %130
  store i32 %131, i32* %15, align 4
  %132 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @soc_dapm_test_bits(%struct.snd_soc_dapm_context* %132, i32 %133, i32 %136, i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %140 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %123
  %143 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %144 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %145 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %149 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %147, %150
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @soc_dapm_test_bits(%struct.snd_soc_dapm_context* %143, i32 %146, i32 %151, i32 %152)
  %154 = load i32, i32* %19, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %142, %123
  br label %157

157:                                              ; preds = %156, %112
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %163
  %167 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %168 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %173 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 1
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %178 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %176, %179
  %181 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 2
  store i32 %180, i32* %181, align 8
  %182 = load i32, i32* %15, align 4
  %183 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 3
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %170, %166
  %185 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %186 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 7
  store %struct.snd_kcontrol* %185, %struct.snd_kcontrol** %186, align 8
  %187 = load i32, i32* %8, align 4
  %188 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 4
  store i32 %187, i32* %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %9, align 4
  %191 = shl i32 %189, %190
  %192 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 5
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* %14, align 4
  %194 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %20, i32 0, i32 6
  store i32 %193, i32* %194, align 8
  %195 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %196 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %195, i32 0, i32 1
  store %struct.snd_soc_dapm_update* %20, %struct.snd_soc_dapm_update** %196, align 8
  br label %197

197:                                              ; preds = %184, %163
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %18, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %18, align 4
  %201 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %202 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %17, align 4
  %205 = call i32 @soc_dapm_mixer_update_power(%struct.snd_soc_card* %201, %struct.snd_kcontrol* %202, i32 %203, i32 %204)
  store i32 %205, i32* %21, align 4
  %206 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %207 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %206, i32 0, i32 1
  store %struct.snd_soc_dapm_update* null, %struct.snd_soc_dapm_update** %207, align 8
  br label %208

208:                                              ; preds = %197, %160
  %209 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %210 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i32, i32* %21, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %216 = call i32 @soc_dpcm_runtime_update(%struct.snd_soc_card* %215)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load i32, i32* %18, align 4
  ret i32 %218
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dapm_kcontrol_set_value(%struct.snd_kcontrol*, i32) #1

declare dso_local i32 @soc_dapm_test_bits(%struct.snd_soc_dapm_context*, i32, i32, i32) #1

declare dso_local i32 @soc_dapm_mixer_update_power(%struct.snd_soc_card*, %struct.snd_kcontrol*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @soc_dpcm_runtime_update(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
