; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.madera_codec_pdata }
%struct.madera_codec_pdata = type { i32*, i32*, i64* }

@MADERA_MAX_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Requested %d mono outputs, using maximum allowed %d\0A\00", align 1
@MADERA_OUT1_MONO = common dso_local global i32 0, align 4
@madera_mono_routes = common dso_local global i32* null, align 8
@MADERA_OUTPUT_PATH_CONFIG_1L = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"OUT%d mono=0x%x\0A\00", align 1
@MADERA_MAX_PDM_SPK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"PDM%d fmt=0x%x mute=0x%x\0A\00", align 1
@MADERA_PDM_SPK1_CTRL_1 = common dso_local global i64 0, align 8
@MADERA_SPK1_MUTE_ENDIAN_MASK = common dso_local global i32 0, align 4
@MADERA_SPK1_MUTE_SEQ1_MASK = common dso_local global i32 0, align 4
@MADERA_PDM_SPK1_CTRL_2 = common dso_local global i64 0, align 8
@MADERA_SPK1_FMT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_init_outputs(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.madera_priv*, align 8
  %7 = alloca %struct.madera*, align 8
  %8 = alloca %struct.madera_codec_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.madera_priv* %14, %struct.madera_priv** %6, align 8
  %15 = load %struct.madera_priv*, %struct.madera_priv** %6, align 8
  %16 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %15, i32 0, i32 0
  %17 = load %struct.madera*, %struct.madera** %16, align 8
  store %struct.madera* %17, %struct.madera** %7, align 8
  %18 = load %struct.madera*, %struct.madera** %7, align 8
  %19 = getelementptr inbounds %struct.madera, %struct.madera* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.madera_codec_pdata* %20, %struct.madera_codec_pdata** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MADERA_MAX_OUTPUT, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.madera*, %struct.madera** %7, align 8
  %26 = getelementptr inbounds %struct.madera, %struct.madera* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MADERA_MAX_OUTPUT, align 4
  %30 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @MADERA_MAX_OUTPUT, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %39 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* @MADERA_OUT1_MONO, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %49 = load i32*, i32** @madera_mono_routes, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %48, i32* %52, i32 1)
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.madera*, %struct.madera** %7, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @MADERA_OUTPUT_PATH_CONFIG_1L, align 8
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* @MADERA_OUT1_MONO, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @regmap_update_bits(i32 %58, i64 %63, i32 %64, i32 %65)
  %67 = load %struct.madera*, %struct.madera** %7, align 8
  %68 = getelementptr inbounds %struct.madera, %struct.madera* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %33

77:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %159, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @MADERA_MAX_PDM_SPK, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %162

82:                                               ; preds = %78
  %83 = load %struct.madera*, %struct.madera** %7, align 8
  %84 = getelementptr inbounds %struct.madera, %struct.madera* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %89 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %96 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %94, i32 %101)
  %103 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %104 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %82
  %112 = load %struct.madera*, %struct.madera** %7, align 8
  %113 = getelementptr inbounds %struct.madera, %struct.madera* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* @MADERA_PDM_SPK1_CTRL_1, align 8
  %116 = load i32, i32* %10, align 4
  %117 = mul nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %115, %118
  %120 = load i32, i32* @MADERA_SPK1_MUTE_ENDIAN_MASK, align 4
  %121 = load i32, i32* @MADERA_SPK1_MUTE_SEQ1_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %124 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @regmap_update_bits(i32 %114, i64 %119, i32 %122, i32 %129)
  br label %131

131:                                              ; preds = %111, %82
  %132 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %133 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %131
  %141 = load %struct.madera*, %struct.madera** %7, align 8
  %142 = getelementptr inbounds %struct.madera, %struct.madera* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* @MADERA_PDM_SPK1_CTRL_2, align 8
  %145 = load i32, i32* %10, align 4
  %146 = mul nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %144, %147
  %149 = load i32, i32* @MADERA_SPK1_FMT_MASK, align 4
  %150 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %8, align 8
  %151 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @regmap_update_bits(i32 %143, i64 %148, i32 %149, i32 %156)
  br label %158

158:                                              ; preds = %140, %131
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %78

162:                                              ; preds = %78
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
