; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_put_dre.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_put_dre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.arizona = type { i32, i32 }
%struct.soc_mixer_control = type { i32, i32 }

@ARIZONA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read output state: %d\0A\00", align 1
@ARIZONA_DRE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to read DRE state: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't change DRE on active outputs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set DRE: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm5110_put_dre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_put_dre(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.arizona*, align 8
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
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %5, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %22 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %21)
  store %struct.snd_soc_dapm_context* %22, %struct.snd_soc_dapm_context** %6, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.arizona* @dev_get_drvdata(i32 %27)
  store %struct.arizona* %28, %struct.arizona** %7, align 8
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %32, %struct.soc_mixer_control** %8, align 8
  %33 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %34 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %36, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %54 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %69 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %67, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %73 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %72)
  %74 = load %struct.arizona*, %struct.arizona** %7, align 8
  %75 = getelementptr inbounds %struct.arizona, %struct.arizona* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ARIZONA_OUTPUT_ENABLES_1, align 4
  %78 = call i32 @regmap_read(i32 %76, i32 %77, i32* %9)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %2
  %82 = load %struct.arizona*, %struct.arizona** %7, align 8
  %83 = getelementptr inbounds %struct.arizona, %struct.arizona* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %189

87:                                               ; preds = %2
  %88 = load %struct.arizona*, %struct.arizona** %7, align 8
  %89 = getelementptr inbounds %struct.arizona, %struct.arizona* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ARIZONA_DRE_ENABLE, align 4
  %92 = call i32 @regmap_read(i32 %90, i32 %91, i32* %10)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.arizona*, %struct.arizona** %7, align 8
  %97 = getelementptr inbounds %struct.arizona, %struct.arizona* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %189

101:                                              ; preds = %87
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %104 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %102, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %110 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %108, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %116 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %114, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %122 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %120, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %101
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %128, %101
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135, %128
  %140 = load %struct.arizona*, %struct.arizona** %7, align 8
  %141 = getelementptr inbounds %struct.arizona, %struct.arizona* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @EBUSY, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %18, align 4
  br label %189

146:                                              ; preds = %135, %132
  %147 = load %struct.arizona*, %struct.arizona** %7, align 8
  %148 = getelementptr inbounds %struct.arizona, %struct.arizona* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ARIZONA_DRE_ENABLE, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @regmap_update_bits(i32 %149, i32 %150, i32 %151, i32 %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %146
  %159 = load %struct.arizona*, %struct.arizona** %7, align 8
  %160 = getelementptr inbounds %struct.arizona, %struct.arizona* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 (i32, i8*, ...) @dev_err(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  br label %189

164:                                              ; preds = %146
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.arizona*, %struct.arizona** %7, align 8
  %172 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %173 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @wm5110_clear_pga_volume(%struct.arizona* %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %167, %164
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.arizona*, %struct.arizona** %7, align 8
  %184 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %185 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @wm5110_clear_pga_volume(%struct.arizona* %183, i32 %186)
  br label %188

188:                                              ; preds = %182, %179, %176
  br label %189

189:                                              ; preds = %188, %158, %139, %95, %81
  %190 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %191 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %190)
  %192 = load i32, i32* %18, align 4
  ret i32 %192
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @wm5110_clear_pga_volume(%struct.arizona*, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
