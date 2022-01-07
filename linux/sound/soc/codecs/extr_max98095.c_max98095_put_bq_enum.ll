; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_put_bq_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_put_bq_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i32*, %struct.max98095_cdata*, i32, %struct.max98095_pdata* }
%struct.max98095_cdata = type { i32, i32 }
%struct.max98095_pdata = type { i32, %struct.max98095_biquad_cfg* }
%struct.max98095_biquad_cfg = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Selected %s/%dHz for %dHz sample rate\0A\00", align 1
@M98095_BQ1EN = common dso_local global i32 0, align 4
@M98095_BQ2EN = common dso_local global i32 0, align 4
@M98095_088_CFG_LEVEL = common dso_local global i32 0, align 4
@M98095_00F_HOST_CFG = common dso_local global i32 0, align 4
@M98095_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @max98095_put_bq_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_put_bq_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98095_priv*, align 8
  %8 = alloca %struct.max98095_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.max98095_cdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.max98095_biquad_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.max98095_priv* %22, %struct.max98095_priv** %7, align 8
  %23 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %24 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %23, i32 0, i32 4
  %25 = load %struct.max98095_pdata*, %struct.max98095_pdata** %24, align 8
  store %struct.max98095_pdata* %25, %struct.max98095_pdata** %8, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @max98095_get_bq_channel(%struct.snd_soc_component* %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %207

43:                                               ; preds = %2
  %44 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %45 = icmp ne %struct.max98095_pdata* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %48 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %207

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %55 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %207

61:                                               ; preds = %52
  %62 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %63 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %62, i32 0, i32 2
  %64 = load %struct.max98095_cdata*, %struct.max98095_cdata** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %64, i64 %66
  store %struct.max98095_cdata* %67, %struct.max98095_cdata** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.max98095_cdata*, %struct.max98095_cdata** %10, align 8
  %70 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.max98095_cdata*, %struct.max98095_cdata** %10, align 8
  %72 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  store i32 %74, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %129, %61
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %78 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %132

81:                                               ; preds = %75
  %82 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %83 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %82, i32 0, i32 1
  %84 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %84, i64 %86
  %88 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %91 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %89, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %81
  %100 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %101 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %100, i32 0, i32 1
  %102 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %102, i64 %104
  %106 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %107, %109
  %111 = call i32 @abs(i64 %110)
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %99
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %117 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %116, i32 0, i32 1
  %118 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %118, i64 %120
  %122 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %123, %125
  %127 = call i32 @abs(i64 %126)
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %114, %99, %81
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %75

132:                                              ; preds = %75
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %137 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %136, i32 0, i32 1
  %138 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %138, i64 %140
  %142 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %145 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %144, i32 0, i32 1
  %146 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %146, i64 %148
  %150 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %143, i64 %151, i32 %152)
  %154 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %155 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %154, i32 0, i32 1
  %156 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %156, i64 %158
  store %struct.max98095_biquad_cfg* %159, %struct.max98095_biquad_cfg** %12, align 8
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %132
  %163 = load i32, i32* @M98095_BQ1EN, align 4
  br label %166

164:                                              ; preds = %132
  %165 = load i32, i32* @M98095_BQ2EN, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %17, align 4
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %169 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %170 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %168, i32 %169)
  store i32 %170, i32* %18, align 4
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %172 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %171, i32 %172, i32 %173, i32 0)
  %175 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %176 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %175, i32 0, i32 0
  %177 = call i32 @mutex_lock(i32* %176)
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %179 = load i32, i32* @M98095_00F_HOST_CFG, align 4
  %180 = load i32, i32* @M98095_SEG, align 4
  %181 = load i32, i32* @M98095_SEG, align 4
  %182 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %12, align 8
  %186 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @m98095_biquad_band(%struct.snd_soc_component* %183, i32 %184, i32 0, i32 %187)
  %189 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.max98095_biquad_cfg*, %struct.max98095_biquad_cfg** %12, align 8
  %192 = getelementptr inbounds %struct.max98095_biquad_cfg, %struct.max98095_biquad_cfg* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @m98095_biquad_band(%struct.snd_soc_component* %189, i32 %190, i32 1, i32 %193)
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %196 = load i32, i32* @M98095_00F_HOST_CFG, align 4
  %197 = load i32, i32* @M98095_SEG, align 4
  %198 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %195, i32 %196, i32 %197, i32 0)
  %199 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %200 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %203 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %18, align 4
  %206 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %166, %58, %51, %41
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98095_get_bq_channel(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @m98095_biquad_band(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
