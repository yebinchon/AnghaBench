; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_inmux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_inmux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, %struct.TYPE_8__, %struct.regmap* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32** }
%struct.regmap = type { i32 }
%struct.soc_enum = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MADERA_IN1L_SRC_SE_MASK = common dso_local global i32 0, align 4
@MADERA_INMODE_SE = common dso_local global i32 0, align 4
@MADERA_IN1L_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mux=%u reg=0x%x inmode=0x%x mask=0x%x val=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @madera_inmux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_inmux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.madera_priv*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca %struct.regmap*, align 8
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
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %20)
  store %struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_context** %7, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.madera_priv* %23, %struct.madera_priv** %8, align 8
  %24 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %25 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %24, i32 0, i32 0
  %26 = load %struct.madera*, %struct.madera** %25, align 8
  store %struct.madera* %26, %struct.madera** %9, align 8
  %27 = load %struct.madera*, %struct.madera** %9, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 2
  %29 = load %struct.regmap*, %struct.regmap** %28, align 8
  store %struct.regmap* %29, %struct.regmap** %10, align 8
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.soc_enum*
  store %struct.soc_enum* %33, %struct.soc_enum** %11, align 8
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %164

46:                                               ; preds = %2
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %49 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %53 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %56 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %54, %57
  %59 = load i32, i32* @MADERA_IN1L_SRC_SE_MASK, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %62 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %118 [
    i32 131, label %64
    i32 130, label %77
    i32 129, label %91
    i32 128, label %104
  ]

64:                                               ; preds = %46
  %65 = load %struct.madera*, %struct.madera** %9, align 8
  %66 = getelementptr inbounds %struct.madera, %struct.madera* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = mul i32 2, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  br label %121

77:                                               ; preds = %46
  %78 = load %struct.madera*, %struct.madera** %9, align 8
  %79 = getelementptr inbounds %struct.madera, %struct.madera* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = mul i32 2, %85
  %87 = add i32 1, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  br label %121

91:                                               ; preds = %46
  %92 = load %struct.madera*, %struct.madera** %9, align 8
  %93 = getelementptr inbounds %struct.madera, %struct.madera* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = mul i32 2, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %15, align 4
  br label %121

104:                                              ; preds = %46
  %105 = load %struct.madera*, %struct.madera** %9, align 8
  %106 = getelementptr inbounds %struct.madera, %struct.madera* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = mul i32 2, %112
  %114 = add i32 1, %113
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  br label %121

118:                                              ; preds = %46
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %164

121:                                              ; preds = %104, %91, %77, %64
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @MADERA_INMODE_SE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* @MADERA_IN1L_SRC_SE_SHIFT, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* %13, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.madera*, %struct.madera** %9, align 8
  %133 = getelementptr inbounds %struct.madera, %struct.madera* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %137 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @dev_dbg(i32 %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.regmap*, %struct.regmap** %10, align 8
  %144 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %145 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @regmap_update_bits_check(%struct.regmap* %143, i32 %146, i32 %147, i32 %148, i32* %16)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %131
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %3, align 4
  br label %164

154:                                              ; preds = %131
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %159 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %162 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %158, %struct.snd_kcontrol* %159, i32 %160, %struct.soc_enum* %161, i32* null)
  store i32 %162, i32* %3, align 4
  br label %164

163:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %157, %152, %118, %43
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits_check(%struct.regmap*, i32, i32, i32, i32*) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
