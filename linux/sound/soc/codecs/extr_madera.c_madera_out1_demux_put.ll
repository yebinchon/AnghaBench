; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_out1_demux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_out1_demux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32, i32, i32*, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.soc_enum = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MADERA_EP_SEL_SHIFT = common dso_local global i32 0, align 4
@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@MADERA_EP_SEL_MASK = common dso_local global i32 0, align 4
@MADERA_OUT1L_ENA = common dso_local global i32 0, align 4
@MADERA_OUT1R_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to disable outputs: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set OUT1 demux: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set output mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to restore earpiece outputs: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_out1_demux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.madera_priv*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca %struct.soc_enum*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %18)
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %7, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.madera_priv* %21, %struct.madera_priv** %8, align 8
  %22 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %23 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %22, i32 0, i32 0
  %24 = load %struct.madera*, %struct.madera** %23, align 8
  store %struct.madera* %24, %struct.madera** %9, align 8
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.soc_enum*
  store %struct.soc_enum* %28, %struct.soc_enum** %10, align 8
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.soc_enum*, %struct.soc_enum** %10, align 8
  %37 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %191

44:                                               ; preds = %2
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %53 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MADERA_EP_SEL_SHIFT, align 4
  %56 = shl i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %58 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %59 = load i32, i32* @MADERA_EP_SEL_MASK, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @snd_soc_component_test_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  br label %183

65:                                               ; preds = %44
  %66 = load %struct.madera*, %struct.madera** %9, align 8
  %67 = getelementptr inbounds %struct.madera, %struct.madera* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %70 = load i32, i32* @MADERA_OUT1L_ENA, align 4
  %71 = load i32, i32* @MADERA_OUT1R_ENA, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %72, i32 0)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.madera*, %struct.madera** %9, align 8
  %78 = getelementptr inbounds %struct.madera, %struct.madera* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @dev_warn(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %65
  %83 = call i32 @usleep_range(i32 2000, i32 3000)
  %84 = load %struct.madera*, %struct.madera** %9, align 8
  %85 = getelementptr inbounds %struct.madera, %struct.madera* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load %struct.madera*, %struct.madera** %9, align 8
  %92 = getelementptr inbounds %struct.madera, %struct.madera* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %95 = load i32, i32* @MADERA_EP_SEL_MASK, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %90, %82
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.madera*, %struct.madera** %9, align 8
  %103 = getelementptr inbounds %struct.madera, %struct.madera* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %134

107:                                              ; preds = %98
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %107
  %111 = load %struct.madera*, %struct.madera** %9, align 8
  %112 = getelementptr inbounds %struct.madera, %struct.madera* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %121

120:                                              ; preds = %110, %107
  store i32 1, i32* %14, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @madera_set_output_mode(%struct.snd_soc_component* %122, i32 1, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.madera*, %struct.madera** %9, align 8
  %129 = getelementptr inbounds %struct.madera, %struct.madera* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @dev_warn(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %134
  %138 = load %struct.madera*, %struct.madera** %9, align 8
  %139 = getelementptr inbounds %struct.madera, %struct.madera* %138, i32 0, i32 4
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %182

144:                                              ; preds = %137
  %145 = load %struct.madera*, %struct.madera** %9, align 8
  %146 = getelementptr inbounds %struct.madera, %struct.madera* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %144, %134
  %152 = load %struct.madera*, %struct.madera** %9, align 8
  %153 = getelementptr inbounds %struct.madera, %struct.madera* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %156 = load i32, i32* @MADERA_OUT1L_ENA, align 4
  %157 = load i32, i32* @MADERA_OUT1R_ENA, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.madera*, %struct.madera** %9, align 8
  %160 = getelementptr inbounds %struct.madera, %struct.madera* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @regmap_update_bits(i32 %154, i32 %155, i32 %158, i32 %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %151
  %166 = load %struct.madera*, %struct.madera** %9, align 8
  %167 = getelementptr inbounds %struct.madera, %struct.madera* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @dev_warn(i32 %168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  br label %181

171:                                              ; preds = %151
  %172 = load %struct.madera*, %struct.madera** %9, align 8
  %173 = getelementptr inbounds %struct.madera, %struct.madera* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = call i32 @msleep(i32 34)
  br label %180

178:                                              ; preds = %171
  %179 = call i32 @usleep_range(i32 2000, i32 3000)
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %165
  br label %182

182:                                              ; preds = %181, %144, %137
  br label %183

183:                                              ; preds = %182, %64
  %184 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %185 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %184)
  %186 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %187 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.soc_enum*, %struct.soc_enum** %10, align 8
  %190 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %186, %struct.snd_kcontrol* %187, i32 %188, %struct.soc_enum* %189, i32* null)
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %183, %41
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_test_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @madera_set_output_mode(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
