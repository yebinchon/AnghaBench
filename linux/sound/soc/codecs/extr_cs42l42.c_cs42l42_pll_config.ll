; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_pll_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_pll_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs42l42_private = type { i32, i32 }

@pll_ratio_table = common dso_local global %struct.TYPE_3__* null, align 8
@CS42L42_MCLK_CTL = common dso_local global i32 0, align 4
@CS42L42_INTERNAL_FS_MASK = common dso_local global i32 0, align 4
@CS42L42_INTERNAL_FS_SHIFT = common dso_local global i32 0, align 4
@CS42L42_MCLK_SRC_SEL = common dso_local global i32 0, align 4
@CS42L42_MCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CS42L42_MCLKDIV_MASK = common dso_local global i32 0, align 4
@CS42L42_MCLK_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_MCLKDIV_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unsupported sclk %d/sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS42L42_FSYNC_P_LOWER = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PERIOD_MASK = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PERIOD_SHIFT = common dso_local global i32 0, align 4
@CS42L42_FSYNC_P_UPPER = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PW_LOWER = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PULSE_WIDTH_MASK = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PULSE_WIDTH_SHIFT = common dso_local global i32 0, align 4
@CS42L42_FSYNC_PW_UPPER = common dso_local global i32 0, align 4
@CS42L42_ASP_FRM_CFG = common dso_local global i32 0, align 4
@CS42L42_ASP_5050_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_FSD_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_FSD_1_0 = common dso_local global i32 0, align 4
@CS42L42_ASP_FSD_SHIFT = common dso_local global i32 0, align 4
@CS42L42_FS_RATE_EN = common dso_local global i32 0, align 4
@CS42L42_FS_EN_MASK = common dso_local global i32 0, align 4
@CS42L42_FS_EN_IASRC_96K = common dso_local global i32 0, align 4
@CS42L42_FS_EN_OASRC_96K = common dso_local global i32 0, align 4
@CS42L42_FS_EN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_IN_ASRC_CLK = common dso_local global i32 0, align 4
@CS42L42_CLK_IASRC_SEL_MASK = common dso_local global i32 0, align 4
@CS42L42_CLK_IASRC_SEL_12 = common dso_local global i32 0, align 4
@CS42L42_CLK_IASRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_OUT_ASRC_CLK = common dso_local global i32 0, align 4
@CS42L42_CLK_OASRC_SEL_MASK = common dso_local global i32 0, align 4
@CS42L42_CLK_OASRC_SEL_12 = common dso_local global i32 0, align 4
@CS42L42_CLK_OASRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_DAI0_CH1_AP_RES = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_AP_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_RES_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_AP_LOW = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_AP_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_RES_32 = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_RES_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_DAI0_CH2_AP_RES = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_CH_AP_HI = common dso_local global i32 0, align 4
@CS42L42_PLL_CTL1 = common dso_local global i32 0, align 4
@CS42L42_PLL_START_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_CFG1 = common dso_local global i32 0, align 4
@CS42L42_SCLK_PREDIV_MASK = common dso_local global i32 0, align 4
@CS42L42_SCLK_PREDIV_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_INT = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_INT_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_INT_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_FRAC0 = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_FRAC_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_FRAC_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_FRAC1 = common dso_local global i32 0, align 4
@CS42L42_PLL_DIV_FRAC2 = common dso_local global i32 0, align 4
@CS42L42_PLL_CTL4 = common dso_local global i32 0, align 4
@CS42L42_PLL_MODE_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_MODE_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PLL_CTL3 = common dso_local global i32 0, align 4
@CS42L42_PLL_DIVOUT_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_DIVOUT_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PLL_CAL_RATIO = common dso_local global i32 0, align 4
@CS42L42_PLL_CAL_RATIO_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_CAL_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs42l42_pll_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_pll_config(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs42l42_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.cs42l42_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.cs42l42_private* %8, %struct.cs42l42_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %320, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %323

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %22 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %319

25:                                               ; preds = %14
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @CS42L42_MCLK_CTL, align 4
  %28 = load i32, i32* @CS42L42_INTERNAL_FS_MASK, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 12000000
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 24000000
  br label %44

44:                                               ; preds = %36, %25
  %45 = phi i1 [ false, %25 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @CS42L42_INTERNAL_FS_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @CS42L42_MCLK_SRC_SEL, align 4
  %52 = load i32, i32* @CS42L42_MCLK_SRC_SEL_MASK, align 4
  %53 = load i32, i32* @CS42L42_MCLKDIV_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS42L42_MCLK_SRC_SEL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CS42L42_MCLKDIV_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %62, %70
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %54, i32 %71)
  %73 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %74 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %77 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %82 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %86 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %44
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89, %44
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %98 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cs42l42_private*, %struct.cs42l42_private** %4, align 8
  %101 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %326

106:                                              ; preds = %89
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @CS42L42_FSYNC_P_LOWER, align 4
  %109 = load i32, i32* @CS42L42_FSYNC_PERIOD_MASK, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @CS42L42_FRAC0_VAL(i32 %111)
  %113 = load i32, i32* @CS42L42_FSYNC_PERIOD_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = load i32, i32* @CS42L42_FSYNC_P_UPPER, align 4
  %118 = load i32, i32* @CS42L42_FSYNC_PERIOD_MASK, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @CS42L42_FRAC1_VAL(i32 %120)
  %122 = load i32, i32* @CS42L42_FSYNC_PERIOD_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* %6, align 4
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %128 = load i32, i32* @CS42L42_FSYNC_PW_LOWER, align 4
  %129 = load i32, i32* @CS42L42_FSYNC_PULSE_WIDTH_MASK, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @CS42L42_FRAC0_VAL(i32 %131)
  %133 = load i32, i32* @CS42L42_FSYNC_PULSE_WIDTH_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %127, i32 %128, i32 %129, i32 %134)
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %137 = load i32, i32* @CS42L42_FSYNC_PW_UPPER, align 4
  %138 = load i32, i32* @CS42L42_FSYNC_PULSE_WIDTH_MASK, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @CS42L42_FRAC1_VAL(i32 %140)
  %142 = load i32, i32* @CS42L42_FSYNC_PULSE_WIDTH_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %136, i32 %137, i32 %138, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %146 = load i32, i32* @CS42L42_ASP_FRM_CFG, align 4
  %147 = load i32, i32* @CS42L42_ASP_5050_MASK, align 4
  %148 = load i32, i32* @CS42L42_ASP_5050_MASK, align 4
  %149 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %151 = load i32, i32* @CS42L42_ASP_FRM_CFG, align 4
  %152 = load i32, i32* @CS42L42_ASP_FSD_MASK, align 4
  %153 = load i32, i32* @CS42L42_ASP_FSD_1_0, align 4
  %154 = load i32, i32* @CS42L42_ASP_FSD_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %150, i32 %151, i32 %152, i32 %155)
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %158 = load i32, i32* @CS42L42_FS_RATE_EN, align 4
  %159 = load i32, i32* @CS42L42_FS_EN_MASK, align 4
  %160 = load i32, i32* @CS42L42_FS_EN_IASRC_96K, align 4
  %161 = load i32, i32* @CS42L42_FS_EN_OASRC_96K, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @CS42L42_FS_EN_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %159, i32 %164)
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %167 = load i32, i32* @CS42L42_IN_ASRC_CLK, align 4
  %168 = load i32, i32* @CS42L42_CLK_IASRC_SEL_MASK, align 4
  %169 = load i32, i32* @CS42L42_CLK_IASRC_SEL_12, align 4
  %170 = load i32, i32* @CS42L42_CLK_IASRC_SEL_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %166, i32 %167, i32 %168, i32 %171)
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %174 = load i32, i32* @CS42L42_OUT_ASRC_CLK, align 4
  %175 = load i32, i32* @CS42L42_CLK_OASRC_SEL_MASK, align 4
  %176 = load i32, i32* @CS42L42_CLK_OASRC_SEL_12, align 4
  %177 = load i32, i32* @CS42L42_CLK_OASRC_SEL_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %173, i32 %174, i32 %175, i32 %178)
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %181 = load i32, i32* @CS42L42_ASP_RX_DAI0_CH1_AP_RES, align 4
  %182 = load i32, i32* @CS42L42_ASP_RX_CH_AP_MASK, align 4
  %183 = load i32, i32* @CS42L42_ASP_RX_CH_RES_MASK, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @CS42L42_ASP_RX_CH_AP_LOW, align 4
  %186 = load i32, i32* @CS42L42_ASP_RX_CH_AP_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* @CS42L42_ASP_RX_CH_RES_32, align 4
  %189 = load i32, i32* @CS42L42_ASP_RX_CH_RES_SHIFT, align 4
  %190 = shl i32 %188, %189
  %191 = or i32 %187, %190
  %192 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %180, i32 %181, i32 %184, i32 %191)
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %194 = load i32, i32* @CS42L42_ASP_RX_DAI0_CH2_AP_RES, align 4
  %195 = load i32, i32* @CS42L42_ASP_RX_CH_AP_MASK, align 4
  %196 = load i32, i32* @CS42L42_ASP_RX_CH_RES_MASK, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @CS42L42_ASP_RX_CH_AP_HI, align 4
  %199 = load i32, i32* @CS42L42_ASP_RX_CH_AP_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* @CS42L42_ASP_RX_CH_RES_32, align 4
  %202 = load i32, i32* @CS42L42_ASP_RX_CH_RES_SHIFT, align 4
  %203 = shl i32 %201, %202
  %204 = or i32 %200, %203
  %205 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %193, i32 %194, i32 %197, i32 %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %106
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %215 = load i32, i32* @CS42L42_PLL_CTL1, align 4
  %216 = load i32, i32* @CS42L42_PLL_START_MASK, align 4
  %217 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %214, i32 %215, i32 %216, i32 0)
  br label %318

218:                                              ; preds = %106
  %219 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %220 = load i32, i32* @CS42L42_PLL_DIV_CFG1, align 4
  %221 = load i32, i32* @CS42L42_SCLK_PREDIV_MASK, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @CS42L42_SCLK_PREDIV_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %219, i32 %220, i32 %221, i32 %229)
  %231 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %232 = load i32, i32* @CS42L42_PLL_DIV_INT, align 4
  %233 = load i32, i32* @CS42L42_PLL_DIV_INT_MASK, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @CS42L42_PLL_DIV_INT_SHIFT, align 4
  %241 = shl i32 %239, %240
  %242 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %231, i32 %232, i32 %233, i32 %241)
  %243 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %244 = load i32, i32* @CS42L42_PLL_DIV_FRAC0, align 4
  %245 = load i32, i32* @CS42L42_PLL_DIV_FRAC_MASK, align 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @CS42L42_FRAC0_VAL(i32 %251)
  %253 = load i32, i32* @CS42L42_PLL_DIV_FRAC_SHIFT, align 4
  %254 = shl i32 %252, %253
  %255 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %243, i32 %244, i32 %245, i32 %254)
  %256 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %257 = load i32, i32* @CS42L42_PLL_DIV_FRAC1, align 4
  %258 = load i32, i32* @CS42L42_PLL_DIV_FRAC_MASK, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @CS42L42_FRAC1_VAL(i32 %264)
  %266 = load i32, i32* @CS42L42_PLL_DIV_FRAC_SHIFT, align 4
  %267 = shl i32 %265, %266
  %268 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %256, i32 %257, i32 %258, i32 %267)
  %269 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %270 = load i32, i32* @CS42L42_PLL_DIV_FRAC2, align 4
  %271 = load i32, i32* @CS42L42_PLL_DIV_FRAC_MASK, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @CS42L42_FRAC2_VAL(i32 %277)
  %279 = load i32, i32* @CS42L42_PLL_DIV_FRAC_SHIFT, align 4
  %280 = shl i32 %278, %279
  %281 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %269, i32 %270, i32 %271, i32 %280)
  %282 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %283 = load i32, i32* @CS42L42_PLL_CTL4, align 4
  %284 = load i32, i32* @CS42L42_PLL_MODE_MASK, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @CS42L42_PLL_MODE_SHIFT, align 4
  %292 = shl i32 %290, %291
  %293 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %282, i32 %283, i32 %284, i32 %292)
  %294 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %295 = load i32, i32* @CS42L42_PLL_CTL3, align 4
  %296 = load i32, i32* @CS42L42_PLL_DIVOUT_MASK, align 4
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @CS42L42_PLL_DIVOUT_SHIFT, align 4
  %304 = shl i32 %302, %303
  %305 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %294, i32 %295, i32 %296, i32 %304)
  %306 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %307 = load i32, i32* @CS42L42_PLL_CAL_RATIO, align 4
  %308 = load i32, i32* @CS42L42_PLL_CAL_RATIO_MASK, align 4
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_ratio_table, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @CS42L42_PLL_CAL_RATIO_SHIFT, align 4
  %316 = shl i32 %314, %315
  %317 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %306, i32 %307, i32 %308, i32 %316)
  br label %318

318:                                              ; preds = %218, %213
  store i32 0, i32* %2, align 4
  br label %326

319:                                              ; preds = %14
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %5, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %5, align 4
  br label %9

323:                                              ; preds = %9
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %323, %318, %93
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local %struct.cs42l42_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @CS42L42_FRAC0_VAL(i32) #1

declare dso_local i32 @CS42L42_FRAC1_VAL(i32) #1

declare dso_local i32 @CS42L42_FRAC2_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
