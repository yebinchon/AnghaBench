; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_change_clksrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_change_clksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32, i32, i32, i32, i32, i32 }

@CS43130_MCLK_22P5 = common dso_local global i32 0, align 4
@CS43130_MCLK_24P5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid MCLK INT freq: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS43130_XTAL_UNUSED = common dso_local global i32 0, align 4
@CS43130_PWDN_CTL = common dso_local global i32 0, align 4
@CS43130_PDN_XTAL_MASK = common dso_local global i32 0, align 4
@CS43130_PDN_XTAL_SHIFT = common dso_local global i32 0, align 4
@CS43130_INT_MASK_1 = common dso_local global i32 0, align 4
@CS43130_XTAL_RDY_INT_MASK = common dso_local global i32 0, align 4
@CS43130_XTAL_RDY_INT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Timeout waiting for XTAL_READY interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CS43130_SYS_CLK_CTL_1 = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CS43130_MCLK_INT_MASK = common dso_local global i32 0, align 4
@CS43130_MCLK_INT_SHIFT = common dso_local global i32 0, align 4
@CS43130_PDN_PLL_MASK = common dso_local global i32 0, align 4
@CS43130_PDN_PLL_SHIFT = common dso_local global i32 0, align 4
@CS43130_PLL_RDY_INT_MASK = common dso_local global i32 0, align 4
@CS43130_PLL_RDY_INT_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Timeout waiting for PLL_READY interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid MCLK source value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs43130_change_clksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_change_clksrc(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs43130_private*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.cs43130_private* %10, %struct.cs43130_private** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %13 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %282

17:                                               ; preds = %2
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 132, label %21
    i32 131, label %23
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @CS43130_MCLK_22P5, align 4
  store i32 %22, i32* %8, align 4
  br label %35

23:                                               ; preds = %17
  %24 = load i32, i32* @CS43130_MCLK_24P5, align 4
  store i32 %24, i32* %8, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %30 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %282

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %274 [
    i32 130, label %37
    i32 129, label %122
    i32 128, label %236
  ]

37:                                               ; preds = %35
  %38 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %39 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %41 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %40, i32 0, i32 0
  store i32 130, i32* %41, align 4
  %42 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %43 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CS43130_XTAL_UNUSED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %49 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %52 = load i32, i32* @CS43130_PDN_XTAL_MASK, align 4
  %53 = load i32, i32* @CS43130_PDN_XTAL_SHIFT, align 4
  %54 = shl i32 1, %53
  %55 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %54)
  br label %94

56:                                               ; preds = %37
  %57 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %58 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %57, i32 0, i32 5
  %59 = call i32 @reinit_completion(i32* %58)
  %60 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %61 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %64 = load i32, i32* @CS43130_XTAL_RDY_INT_MASK, align 4
  %65 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %67 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %70 = load i32, i32* @CS43130_PDN_XTAL_MASK, align 4
  %71 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 0)
  %72 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %73 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %72, i32 0, i32 5
  %74 = call i32 @msecs_to_jiffies(i32 100)
  %75 = call i32 @wait_for_completion_timeout(i32* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %77 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %80 = load i32, i32* @CS43130_XTAL_RDY_INT_MASK, align 4
  %81 = load i32, i32* @CS43130_XTAL_RDY_INT_SHIFT, align 4
  %82 = shl i32 1, %81
  %83 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %56
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ETIMEDOUT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %282

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %96 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %99 = load i32, i32* @CS43130_MCLK_SRC_SEL_MASK, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @CS43130_MCLK_SRC_SEL_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %105 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %108 = load i32, i32* @CS43130_MCLK_INT_MASK, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @CS43130_MCLK_INT_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %111)
  %113 = call i32 @usleep_range(i32 150, i32 200)
  %114 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %115 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %118 = load i32, i32* @CS43130_PDN_PLL_MASK, align 4
  %119 = load i32, i32* @CS43130_PDN_PLL_SHIFT, align 4
  %120 = shl i32 1, %119
  %121 = call i32 @regmap_update_bits(i32 %116, i32 %117, i32 %118, i32 %120)
  br label %281

122:                                              ; preds = %35
  %123 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %124 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %123, i32 0, i32 2
  store i32 0, i32* %124, align 4
  %125 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %126 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %125, i32 0, i32 0
  store i32 129, i32* %126, align 4
  %127 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %128 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CS43130_XTAL_UNUSED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %134 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %137 = load i32, i32* @CS43130_PDN_XTAL_MASK, align 4
  %138 = load i32, i32* @CS43130_PDN_XTAL_SHIFT, align 4
  %139 = shl i32 1, %138
  %140 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %137, i32 %139)
  br label %179

141:                                              ; preds = %122
  %142 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %143 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %142, i32 0, i32 5
  %144 = call i32 @reinit_completion(i32* %143)
  %145 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %146 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %149 = load i32, i32* @CS43130_XTAL_RDY_INT_MASK, align 4
  %150 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 0)
  %151 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %152 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %155 = load i32, i32* @CS43130_PDN_XTAL_MASK, align 4
  %156 = call i32 @regmap_update_bits(i32 %153, i32 %154, i32 %155, i32 0)
  %157 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %158 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %157, i32 0, i32 5
  %159 = call i32 @msecs_to_jiffies(i32 100)
  %160 = call i32 @wait_for_completion_timeout(i32* %158, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %162 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %165 = load i32, i32* @CS43130_XTAL_RDY_INT_MASK, align 4
  %166 = load i32, i32* @CS43130_XTAL_RDY_INT_SHIFT, align 4
  %167 = shl i32 1, %166
  %168 = call i32 @regmap_update_bits(i32 %163, i32 %164, i32 %165, i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %141
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %173 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @dev_err(i32 %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %176 = load i32, i32* @ETIMEDOUT, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %282

178:                                              ; preds = %141
  br label %179

179:                                              ; preds = %178, %132
  %180 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %181 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %180, i32 0, i32 4
  %182 = call i32 @reinit_completion(i32* %181)
  %183 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %184 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %187 = load i32, i32* @CS43130_PLL_RDY_INT_MASK, align 4
  %188 = call i32 @regmap_update_bits(i32 %185, i32 %186, i32 %187, i32 0)
  %189 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %190 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %193 = load i32, i32* @CS43130_PDN_PLL_MASK, align 4
  %194 = call i32 @regmap_update_bits(i32 %191, i32 %192, i32 %193, i32 0)
  %195 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %196 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %195, i32 0, i32 4
  %197 = call i32 @msecs_to_jiffies(i32 100)
  %198 = call i32 @wait_for_completion_timeout(i32* %196, i32 %197)
  store i32 %198, i32* %6, align 4
  %199 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %200 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %203 = load i32, i32* @CS43130_PLL_RDY_INT_MASK, align 4
  %204 = load i32, i32* @CS43130_PLL_RDY_INT_SHIFT, align 4
  %205 = shl i32 1, %204
  %206 = call i32 @regmap_update_bits(i32 %201, i32 %202, i32 %203, i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %179
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %211 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i8*, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %214 = load i32, i32* @ETIMEDOUT, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %282

216:                                              ; preds = %179
  %217 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %218 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %221 = load i32, i32* @CS43130_MCLK_SRC_SEL_MASK, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @CS43130_MCLK_SRC_SEL_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = call i32 @regmap_update_bits(i32 %219, i32 %220, i32 %221, i32 %224)
  %226 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %227 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %230 = load i32, i32* @CS43130_MCLK_INT_MASK, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @CS43130_MCLK_INT_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = call i32 @regmap_update_bits(i32 %228, i32 %229, i32 %230, i32 %233)
  %235 = call i32 @usleep_range(i32 150, i32 200)
  br label %281

236:                                              ; preds = %35
  %237 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %238 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %237, i32 0, i32 0
  store i32 128, i32* %238, align 4
  %239 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %240 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %243 = load i32, i32* @CS43130_MCLK_SRC_SEL_MASK, align 4
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* @CS43130_MCLK_SRC_SEL_SHIFT, align 4
  %246 = shl i32 %244, %245
  %247 = call i32 @regmap_update_bits(i32 %241, i32 %242, i32 %243, i32 %246)
  %248 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %249 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @CS43130_SYS_CLK_CTL_1, align 4
  %252 = load i32, i32* @CS43130_MCLK_INT_MASK, align 4
  %253 = load i32, i32* @CS43130_MCLK_22P5, align 4
  %254 = load i32, i32* @CS43130_MCLK_INT_SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = call i32 @regmap_update_bits(i32 %250, i32 %251, i32 %252, i32 %255)
  %257 = call i32 @usleep_range(i32 150, i32 200)
  %258 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %259 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %262 = load i32, i32* @CS43130_PDN_XTAL_MASK, align 4
  %263 = load i32, i32* @CS43130_PDN_XTAL_SHIFT, align 4
  %264 = shl i32 1, %263
  %265 = call i32 @regmap_update_bits(i32 %260, i32 %261, i32 %262, i32 %264)
  %266 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %267 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @CS43130_PWDN_CTL, align 4
  %270 = load i32, i32* @CS43130_PDN_PLL_MASK, align 4
  %271 = load i32, i32* @CS43130_PDN_PLL_SHIFT, align 4
  %272 = shl i32 1, %271
  %273 = call i32 @regmap_update_bits(i32 %268, i32 %269, i32 %270, i32 %272)
  br label %281

274:                                              ; preds = %35
  %275 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %276 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i32, i8*, ...) @dev_err(i32 %277, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %3, align 4
  br label %282

281:                                              ; preds = %236, %216, %94
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %281, %274, %209, %171, %86, %25, %16
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
