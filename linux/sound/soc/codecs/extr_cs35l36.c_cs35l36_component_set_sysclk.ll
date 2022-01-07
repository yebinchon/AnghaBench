; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_component_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_component_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l36_private = type { i32, i64, i32, i64 }
%struct.cs35l36_pll_config = type { i32, i32 }

@CS35L36_PLLSRC_SCLK = common dso_local global i32 0, align 4
@CS35L36_PLLSRC_LRCLK = common dso_local global i32 0, align 4
@CS35L36_PLLSRC_PDMCLK = common dso_local global i32 0, align 4
@CS35L36_PLLSRC_SELF = common dso_local global i32 0, align 4
@CS35L36_PLLSRC_MCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid CLK Config Freq: %d\0A\00", align 1
@CS35L36_PLL_CLK_CTRL = common dso_local global i32 0, align 4
@CS35L36_PLL_OPENLOOP_MASK = common dso_local global i32 0, align 4
@CS35L36_PLL_OPENLOOP_SHIFT = common dso_local global i32 0, align 4
@CS35L36_REFCLK_FREQ_MASK = common dso_local global i32 0, align 4
@CS35L36_REFCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@CS35L36_PLL_REFCLK_EN_MASK = common dso_local global i32 0, align 4
@CS35L36_PLL_REFCLK_EN_SHIFT = common dso_local global i32 0, align 4
@CS35L36_PLL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CS35L36_REV_A0 = common dso_local global i64 0, align 8
@CS35L36_TESTKEY_CTRL = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK2 = common dso_local global i32 0, align 4
@CS35L36_DCO_CTRL = common dso_local global i32 0, align 4
@CS35L36_MISC_CTRL = common dso_local global i32 0, align 4
@CS35L36_PLL_LOOP_PARAMS = common dso_local global i32 0, align 4
@CS35L36_PLL_IGAIN_MASK = common dso_local global i32 0, align 4
@CS35L36_PLL_IGAIN = common dso_local global i32 0, align 4
@CS35L36_PLL_IGAIN_SHIFT = common dso_local global i32 0, align 4
@CS35L36_PLL_FFL_IGAIN_MASK = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK2 = common dso_local global i32 0, align 4
@CS35L36_NG_CFG = common dso_local global i32 0, align 4
@CS35L36_NG_DELAY_MASK = common dso_local global i32 0, align 4
@CS35L36_NG_DELAY_SHIFT = common dso_local global i32 0, align 4
@CS35L36_DAC_MSM_CFG = common dso_local global i32 0, align 4
@CS35L36_PDM_MODE_MASK = common dso_local global i32 0, align 4
@CS35L36_PDM_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs35l36_component_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_component_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs35l36_private*, align 8
  %13 = alloca %struct.cs35l36_pll_config*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs35l36_private* %17, %struct.cs35l36_private** %12, align 8
  %18 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %19 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %42 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %30
    i32 3, label %34
    i32 4, label %38
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* @CS35L36_PLLSRC_SCLK, align 4
  %24 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %25 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %45

26:                                               ; preds = %5
  %27 = load i32, i32* @CS35L36_PLLSRC_LRCLK, align 4
  %28 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %29 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %45

30:                                               ; preds = %5
  %31 = load i32, i32* @CS35L36_PLLSRC_PDMCLK, align 4
  %32 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %33 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %45

34:                                               ; preds = %5
  %35 = load i32, i32* @CS35L36_PLLSRC_SELF, align 4
  %36 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %37 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %45

38:                                               ; preds = %5
  %39 = load i32, i32* @CS35L36_PLLSRC_MCLK, align 4
  %40 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %41 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %265

45:                                               ; preds = %38, %34, %30, %26, %22
  %46 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.cs35l36_pll_config* @cs35l36_get_clk_config(%struct.cs35l36_private* %46, i32 %47)
  store %struct.cs35l36_pll_config* %48, %struct.cs35l36_pll_config** %13, align 8
  %49 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** %13, align 8
  %50 = icmp eq %struct.cs35l36_pll_config* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %265

59:                                               ; preds = %45
  %60 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %61 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %64 = load i32, i32* @CS35L36_PLL_OPENLOOP_MASK, align 4
  %65 = load i32, i32* @CS35L36_PLL_OPENLOOP_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %66)
  %68 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %69 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %72 = load i32, i32* @CS35L36_REFCLK_FREQ_MASK, align 4
  %73 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** %13, align 8
  %74 = getelementptr inbounds %struct.cs35l36_pll_config, %struct.cs35l36_pll_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CS35L36_REFCLK_FREQ_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 %77)
  %79 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %80 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %83 = load i32, i32* @CS35L36_PLL_REFCLK_EN_MASK, align 4
  %84 = load i32, i32* @CS35L36_PLL_REFCLK_EN_SHIFT, align 4
  %85 = shl i32 0, %84
  %86 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %85)
  %87 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %88 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %91 = load i32, i32* @CS35L36_PLL_CLK_SEL_MASK, align 4
  %92 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %93 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %97 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %100 = load i32, i32* @CS35L36_PLL_OPENLOOP_MASK, align 4
  %101 = load i32, i32* @CS35L36_PLL_OPENLOOP_SHIFT, align 4
  %102 = shl i32 0, %101
  %103 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %102)
  %104 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %105 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CS35L36_PLL_CLK_CTRL, align 4
  %108 = load i32, i32* @CS35L36_PLL_REFCLK_EN_MASK, align 4
  %109 = load i32, i32* @CS35L36_PLL_REFCLK_EN_SHIFT, align 4
  %110 = shl i32 1, %109
  %111 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %110)
  %112 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %113 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CS35L36_REV_A0, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %170

117:                                              ; preds = %59
  %118 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %119 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %122 = load i32, i32* @CS35L36_TEST_UNLOCK1, align 4
  %123 = call i32 @regmap_write(i32 %120, i32 %121, i32 %122)
  %124 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %125 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %128 = load i32, i32* @CS35L36_TEST_UNLOCK2, align 4
  %129 = call i32 @regmap_write(i32 %126, i32 %127, i32 %128)
  %130 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %131 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CS35L36_DCO_CTRL, align 4
  %134 = call i32 @regmap_write(i32 %132, i32 %133, i32 224680)
  %135 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %136 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CS35L36_MISC_CTRL, align 4
  %139 = call i32 @regmap_write(i32 %137, i32 %138, i32 16838158)
  %140 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %141 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CS35L36_PLL_LOOP_PARAMS, align 4
  %144 = load i32, i32* @CS35L36_PLL_IGAIN_MASK, align 4
  %145 = load i32, i32* @CS35L36_PLL_IGAIN, align 4
  %146 = load i32, i32* @CS35L36_PLL_IGAIN_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = call i32 @regmap_update_bits(i32 %142, i32 %143, i32 %144, i32 %147)
  %149 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %150 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CS35L36_PLL_LOOP_PARAMS, align 4
  %153 = load i32, i32* @CS35L36_PLL_FFL_IGAIN_MASK, align 4
  %154 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** %13, align 8
  %155 = getelementptr inbounds %struct.cs35l36_pll_config, %struct.cs35l36_pll_config* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @regmap_update_bits(i32 %151, i32 %152, i32 %153, i32 %156)
  %158 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %159 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %162 = load i32, i32* @CS35L36_TEST_LOCK1, align 4
  %163 = call i32 @regmap_write(i32 %160, i32 %161, i32 %162)
  %164 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %165 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %168 = load i32, i32* @CS35L36_TEST_LOCK2, align 4
  %169 = call i32 @regmap_write(i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %117, %59
  %171 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %172 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CS35L36_PLLSRC_PDMCLK, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %220

176:                                              ; preds = %170
  %177 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %178 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @CS35L36_PLLSRC_PDMCLK, align 4
  %184 = icmp ne i32 %182, %183
  br label %185

185:                                              ; preds = %181, %176
  %186 = phi i1 [ false, %176 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %192 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CS35L36_NG_CFG, align 4
  %195 = load i32, i32* @CS35L36_NG_DELAY_MASK, align 4
  %196 = load i32, i32* @CS35L36_NG_DELAY_SHIFT, align 4
  %197 = shl i32 0, %196
  %198 = call i32 @regmap_update_bits(i32 %193, i32 %194, i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %190, %185
  %200 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %201 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CS35L36_DAC_MSM_CFG, align 4
  %204 = load i32, i32* @CS35L36_PDM_MODE_MASK, align 4
  %205 = load i32, i32* @CS35L36_PDM_MODE_SHIFT, align 4
  %206 = shl i32 1, %205
  %207 = call i32 @regmap_update_bits(i32 %202, i32 %203, i32 %204, i32 %206)
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %199
  %211 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %212 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CS35L36_NG_CFG, align 4
  %215 = load i32, i32* @CS35L36_NG_DELAY_MASK, align 4
  %216 = load i32, i32* @CS35L36_NG_DELAY_SHIFT, align 4
  %217 = shl i32 3, %216
  %218 = call i32 @regmap_update_bits(i32 %213, i32 %214, i32 %215, i32 %217)
  br label %219

219:                                              ; preds = %210, %199
  br label %264

220:                                              ; preds = %170
  %221 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %222 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @CS35L36_PLLSRC_PDMCLK, align 4
  %228 = icmp eq i32 %226, %227
  br label %229

229:                                              ; preds = %225, %220
  %230 = phi i1 [ false, %220 ], [ %228, %225 ]
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %236 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CS35L36_NG_CFG, align 4
  %239 = load i32, i32* @CS35L36_NG_DELAY_MASK, align 4
  %240 = load i32, i32* @CS35L36_NG_DELAY_SHIFT, align 4
  %241 = shl i32 0, %240
  %242 = call i32 @regmap_update_bits(i32 %237, i32 %238, i32 %239, i32 %241)
  br label %243

243:                                              ; preds = %234, %229
  %244 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %245 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CS35L36_DAC_MSM_CFG, align 4
  %248 = load i32, i32* @CS35L36_PDM_MODE_MASK, align 4
  %249 = load i32, i32* @CS35L36_PDM_MODE_SHIFT, align 4
  %250 = shl i32 0, %249
  %251 = call i32 @regmap_update_bits(i32 %246, i32 %247, i32 %248, i32 %250)
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %243
  %255 = load %struct.cs35l36_private*, %struct.cs35l36_private** %12, align 8
  %256 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @CS35L36_NG_CFG, align 4
  %259 = load i32, i32* @CS35L36_NG_DELAY_MASK, align 4
  %260 = load i32, i32* @CS35L36_NG_DELAY_SHIFT, align 4
  %261 = shl i32 3, %260
  %262 = call i32 @regmap_update_bits(i32 %257, i32 %258, i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %254, %243
  br label %264

264:                                              ; preds = %263, %219
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %264, %51, %42
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.cs35l36_pll_config* @cs35l36_get_clk_config(%struct.cs35l36_private*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
