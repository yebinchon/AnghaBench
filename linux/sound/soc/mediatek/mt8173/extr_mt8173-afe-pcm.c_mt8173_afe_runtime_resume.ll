; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@MT8173_CLK_INFRASYS_AUD = common dso_local global i64 0, align 8
@MT8173_CLK_TOP_PDN_AUD_BUS = common dso_local global i64 0, align 8
@MT8173_CLK_TOP_PDN_AUD = common dso_local global i64 0, align 8
@MT8173_CLK_BCK0 = common dso_local global i64 0, align 8
@MT8173_CLK_BCK1 = common dso_local global i64 0, align 8
@MT8173_CLK_I2S1_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S2_M = common dso_local global i64 0, align 8
@AUDIO_TOP_CON0 = common dso_local global i32 0, align 4
@AUD_TCON0_PDN_AFE = common dso_local global i32 0, align 4
@AFE_CONN_24BIT = common dso_local global i32 0, align 4
@AFE_CONN_24BIT_O03 = common dso_local global i32 0, align 4
@AFE_CONN_24BIT_O04 = common dso_local global i32 0, align 4
@AFE_IRQ_MCU_EN = common dso_local global i32 0, align 4
@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt8173_afe_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca %struct.mt8173_afe_private*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mtk_base_afe* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_base_afe* %8, %struct.mtk_base_afe** %4, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %10, align 8
  store %struct.mt8173_afe_private* %11, %struct.mt8173_afe_private** %5, align 8
  %12 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %13 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @MT8173_CLK_INFRASYS_AUD, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %163

23:                                               ; preds = %1
  %24 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %25 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD_BUS, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %154

34:                                               ; preds = %23
  %35 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %36 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %146

45:                                               ; preds = %34
  %46 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %47 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @MT8173_CLK_BCK0, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_prepare_enable(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %138

56:                                               ; preds = %45
  %57 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %58 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @MT8173_CLK_BCK1, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_prepare_enable(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %130

67:                                               ; preds = %56
  %68 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %69 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @MT8173_CLK_I2S1_M, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %114

78:                                               ; preds = %67
  %79 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %80 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MT8173_CLK_I2S2_M, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_prepare_enable(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %122

89:                                               ; preds = %78
  %90 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AUDIO_TOP_CON0, align 4
  %94 = load i32, i32* @AUD_TCON0_PDN_AFE, align 4
  %95 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AFE_CONN_24BIT, align 4
  %100 = load i32, i32* @AFE_CONN_24BIT_O03, align 4
  %101 = load i32, i32* @AFE_CONN_24BIT_O04, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %102, i32 0)
  %104 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AFE_IRQ_MCU_EN, align 4
  %108 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 255, i32 255)
  %109 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %110 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AFE_DAC_CON0, align 4
  %113 = call i32 @regmap_update_bits(i32 %111, i32 %112, i32 1, i32 1)
  store i32 0, i32* %2, align 4
  br label %163

114:                                              ; preds = %77
  %115 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %116 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @MT8173_CLK_I2S1_M, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @clk_disable_unprepare(i32 %120)
  br label %122

122:                                              ; preds = %114, %88
  %123 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %124 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @MT8173_CLK_I2S2_M, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clk_disable_unprepare(i32 %128)
  br label %130

130:                                              ; preds = %122, %66
  %131 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %132 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @MT8173_CLK_BCK0, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clk_disable_unprepare(i32 %136)
  br label %138

138:                                              ; preds = %130, %55
  %139 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %140 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_disable_unprepare(i32 %144)
  br label %146

146:                                              ; preds = %138, %44
  %147 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %148 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD_BUS, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clk_disable_unprepare(i32 %152)
  br label %154

154:                                              ; preds = %146, %33
  %155 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %5, align 8
  %156 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @MT8173_CLK_INFRASYS_AUD, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @clk_disable_unprepare(i32 %160)
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %154, %89, %21
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.mtk_base_afe* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
