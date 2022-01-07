; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_bells.c_bells_late_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_bells.c_bells_late_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i64, %struct.TYPE_2__*, %struct.bells_drvdata* }
%struct.TYPE_2__ = type { i32 }
%struct.bells_drvdata = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DAI_AP_DSP = common dso_local global i64 0, align 8
@DAI_DSP_CODEC = common dso_local global i64 0, align 8
@ARIZONA_CLK_SYSCLK = common dso_local global i32 0, align 4
@ARIZONA_CLK_SRC_FLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set SYSCLK: %d\0A\00", align 1
@SYS_MCLK_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set WM0010 clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set AIF1 clock: %d\0A\00", align 1
@ARIZONA_CLK_OPCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to set OPCLK: %d\0A\00", align 1
@DAI_CODEC_CP = common dso_local global i64 0, align 8
@ARIZONA_CLK_ASYNCCLK = common dso_local global i32 0, align 4
@ARIZONA_CLK_SRC_FLL2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to set ASYNCCLK: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to set AIF2 clock: %d\0A\00", align 1
@DAI_CODEC_SUB = common dso_local global i64 0, align 8
@WM9081_SYSCLK_MCLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to set MCLK: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @bells_late_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bells_late_probe(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.bells_drvdata*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.snd_soc_dai*, align 8
  %11 = alloca %struct.snd_soc_dai*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 2
  %15 = load %struct.bells_drvdata*, %struct.bells_drvdata** %14, align 8
  store %struct.bells_drvdata* %15, %struct.bells_drvdata** %4, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @DAI_AP_DSP, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %16, i32 %23)
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %5, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %26, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 1
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %28, align 8
  store %struct.snd_soc_component* %29, %struct.snd_soc_component** %6, align 8
  %30 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @DAI_DSP_CODEC, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %30, i32 %37)
  store %struct.snd_soc_pcm_runtime* %38, %struct.snd_soc_pcm_runtime** %5, align 8
  %39 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %39, i32 0, i32 0
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %40, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 1
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %42, align 8
  store %struct.snd_soc_component* %43, %struct.snd_soc_component** %7, align 8
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 0
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %45, align 8
  store %struct.snd_soc_dai* %46, %struct.snd_soc_dai** %8, align 8
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %49 = load i32, i32* @ARIZONA_CLK_SRC_FLL1, align 4
  %50 = load %struct.bells_drvdata*, %struct.bells_drvdata** %4, align 8
  %51 = getelementptr inbounds %struct.bells_drvdata, %struct.bells_drvdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %54 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %2, align 4
  br label %205

64:                                               ; preds = %1
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = load i32, i32* @SYS_MCLK_RATE, align 4
  %67 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %65, i32 0, i32 0, i32 %66, i32 0)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %2, align 4
  br label %205

77:                                               ; preds = %64
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %79 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %80 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %78, i32 %79, i32 0, i32 0)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %91 = load i32, i32* @ARIZONA_CLK_OPCLK, align 4
  %92 = load i32, i32* @SYS_MCLK_RATE, align 4
  %93 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %94 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %90, i32 %91, i32 0, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %89
  %104 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %105 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DAI_CODEC_CP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %205

110:                                              ; preds = %103
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %112 = load i32, i32* @ARIZONA_CLK_ASYNCCLK, align 4
  %113 = load i32, i32* @ARIZONA_CLK_SRC_FLL2, align 4
  %114 = load %struct.bells_drvdata*, %struct.bells_drvdata** %4, align 8
  %115 = getelementptr inbounds %struct.bells_drvdata, %struct.bells_drvdata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %118 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %2, align 4
  br label %205

128:                                              ; preds = %110
  %129 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %130 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %131 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i64, i64* @DAI_CODEC_CP, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %129, i32 %136)
  store %struct.snd_soc_pcm_runtime* %137, %struct.snd_soc_pcm_runtime** %5, align 8
  %138 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %139 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %138, i32 0, i32 1
  %140 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %139, align 8
  store %struct.snd_soc_dai* %140, %struct.snd_soc_dai** %9, align 8
  %141 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %142 = load i32, i32* @ARIZONA_CLK_ASYNCCLK, align 4
  %143 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %141, i32 %142, i32 0, i32 0)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %128
  %147 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %148 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  br label %205

153:                                              ; preds = %128
  %154 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %155 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DAI_CODEC_SUB, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %205

160:                                              ; preds = %153
  %161 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %162 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %163 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i64, i64* @DAI_CODEC_SUB, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %161, i32 %168)
  store %struct.snd_soc_pcm_runtime* %169, %struct.snd_soc_pcm_runtime** %5, align 8
  %170 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %171 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %170, i32 0, i32 1
  %172 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %171, align 8
  store %struct.snd_soc_dai* %172, %struct.snd_soc_dai** %10, align 8
  %173 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %174 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %173, i32 0, i32 0
  %175 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %174, align 8
  store %struct.snd_soc_dai* %175, %struct.snd_soc_dai** %11, align 8
  %176 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %177 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %178 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %176, i32 %177, i32 0, i32 0)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %160
  %182 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %183 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @dev_err(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %2, align 4
  br label %205

188:                                              ; preds = %160
  %189 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %190 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %189, i32 0, i32 1
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %190, align 8
  %192 = load i32, i32* @WM9081_SYSCLK_MCLK, align 4
  %193 = load i32, i32* @SYS_MCLK_RATE, align 4
  %194 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %191, i32 %192, i32 0, i32 %193, i32 0)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %188
  %198 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %199 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @dev_err(i32 %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %2, align 4
  br label %205

204:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %197, %181, %159, %146, %121, %109, %70, %57
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
