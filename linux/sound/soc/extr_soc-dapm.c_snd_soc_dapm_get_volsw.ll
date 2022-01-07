; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_get_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }

@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_NOPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_get_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
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
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_context** %6, align 8
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %22, align 8
  store %struct.snd_soc_card* %23, %struct.snd_soc_card** %7, align 8
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %27, %struct.soc_mixer_control** %8, align 8
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @fls(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @fls(i32 %39)
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %44 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %46 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %46, i32 0, i32 0
  %48 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %49 = call i32 @mutex_lock_nested(i32* %47, i32 %48)
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %51 = call i64 @dapm_kcontrol_is_powered(%struct.snd_kcontrol* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %2
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SND_SOC_NOPM, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %53
  %58 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @soc_dapm_read(%struct.snd_soc_dapm_context* %58, i32 %59, i32* %15)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %10, align 4
  %63 = lshr i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %71 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %76 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %77 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @soc_dapm_read(%struct.snd_soc_dapm_context* %75, i32 %78, i32* %15)
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %74, %68, %57
  %81 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %82 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %87 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = lshr i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %109

93:                                               ; preds = %53, %2
  %94 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %95 = call i32 @dapm_kcontrol_get_value(%struct.snd_kcontrol* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %100 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %12, align 4
  %105 = lshr i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %102, %93
  br label %109

109:                                              ; preds = %108, %92
  %110 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %111 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %3, align 4
  br label %166

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sub i32 %121, %122
  %124 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %125 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %123, i32* %129, align 4
  br label %138

130:                                              ; preds = %117
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %133 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %120
  %139 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %140 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sub i32 %146, %147
  %149 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %150 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %148, i32* %154, align 4
  br label %163

155:                                              ; preds = %142
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %158 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %156, i32* %162, align 4
  br label %163

163:                                              ; preds = %155, %145
  br label %164

164:                                              ; preds = %163, %138
  %165 = load i32, i32* %18, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %115
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @dapm_kcontrol_is_powered(%struct.snd_kcontrol*) #1

declare dso_local i32 @soc_dapm_read(%struct.snd_soc_dapm_context*, i32, i32*) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

declare dso_local i32 @dapm_kcontrol_get_value(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
