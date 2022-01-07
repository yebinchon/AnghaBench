; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_put_demux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_put_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs47l92 = type { %struct.madera_priv }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.soc_enum = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@MADERA_EP_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read outputs: %d\0A\00", align 1
@MADERA_OUT3L_ENA = common dso_local global i32 0, align 4
@MADERA_OUT3R_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to disable outputs: %d\0A\00", align 1
@MADERA_EP_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set OUT3 demux: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to set output mode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to restore outputs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cs47l92_put_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l92_put_demux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.cs47l92*, align 8
  %9 = alloca %struct.madera_priv*, align 8
  %10 = alloca %struct.madera*, align 8
  %11 = alloca %struct.soc_enum*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %20)
  store %struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_context** %7, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = call %struct.cs47l92* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.cs47l92* %23, %struct.cs47l92** %8, align 8
  %24 = load %struct.cs47l92*, %struct.cs47l92** %8, align 8
  %25 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %24, i32 0, i32 0
  store %struct.madera_priv* %25, %struct.madera_priv** %9, align 8
  %26 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %27 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %26, i32 0, i32 0
  %28 = load %struct.madera*, %struct.madera** %27, align 8
  store %struct.madera* %28, %struct.madera** %10, align 8
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.soc_enum*
  store %struct.soc_enum* %32, %struct.soc_enum** %11, align 8
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %41 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %181

48:                                               ; preds = %2
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %57 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %60 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %58, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %65 = load i32, i32* @MADERA_EP_SEL_MASK, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @snd_soc_component_test_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %48
  br label %173

71:                                               ; preds = %48
  %72 = load %struct.madera*, %struct.madera** %10, align 8
  %73 = getelementptr inbounds %struct.madera, %struct.madera* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %76 = call i32 @regmap_read(i32 %74, i32 %75, i32* %15)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.madera*, %struct.madera** %10, align 8
  %81 = getelementptr inbounds %struct.madera, %struct.madera* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.madera*, %struct.madera** %10, align 8
  %87 = getelementptr inbounds %struct.madera, %struct.madera* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %90 = load i32, i32* @MADERA_OUT3L_ENA, align 4
  %91 = load i32, i32* @MADERA_OUT3R_ENA, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %92, i32 0)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load %struct.madera*, %struct.madera** %10, align 8
  %98 = getelementptr inbounds %struct.madera, %struct.madera* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @dev_warn(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %85
  %103 = call i32 @usleep_range(i32 2000, i32 3000)
  %104 = load %struct.madera*, %struct.madera** %10, align 8
  %105 = getelementptr inbounds %struct.madera, %struct.madera* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %108 = load i32, i32* @MADERA_EP_SEL, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %102
  %114 = load %struct.madera*, %struct.madera** %10, align 8
  %115 = getelementptr inbounds %struct.madera, %struct.madera* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %142

119:                                              ; preds = %102
  %120 = load %struct.madera*, %struct.madera** %10, align 8
  %121 = getelementptr inbounds %struct.madera, %struct.madera* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = add i32 2, %125
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %16, align 4
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @madera_set_output_mode(%struct.snd_soc_component* %130, i32 3, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = load %struct.madera*, %struct.madera** %10, align 8
  %137 = getelementptr inbounds %struct.madera, %struct.madera* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @dev_warn(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %119
  br label %142

142:                                              ; preds = %141, %113
  %143 = load %struct.madera*, %struct.madera** %10, align 8
  %144 = getelementptr inbounds %struct.madera, %struct.madera* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %147 = load i32, i32* @MADERA_OUT3L_ENA, align 4
  %148 = load i32, i32* @MADERA_OUT3R_ENA, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @regmap_update_bits(i32 %145, i32 %146, i32 %149, i32 %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %142
  %155 = load %struct.madera*, %struct.madera** %10, align 8
  %156 = getelementptr inbounds %struct.madera, %struct.madera* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @dev_warn(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  br label %172

160:                                              ; preds = %142
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @MADERA_OUT3L_ENA, align 4
  %163 = load i32, i32* @MADERA_OUT3R_ENA, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = call i32 @msleep(i32 34)
  br label %171

169:                                              ; preds = %160
  %170 = call i32 @usleep_range(i32 2000, i32 3000)
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %154
  br label %173

173:                                              ; preds = %172, %70
  %174 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %175 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %174)
  %176 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %177 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %180 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %176, %struct.snd_kcontrol* %177, i32 %178, %struct.soc_enum* %179, i32* null)
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %173, %45
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.cs47l92* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_test_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

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
