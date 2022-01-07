; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_configure_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_configure_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"No SYSCLK configured\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No audio clocks configured\0A\00", align 1
@M98090_REG_MASTER_MODE = common dso_local global i32 0, align 4
@M98090_MAS_MASK = common dso_local global i32 0, align 4
@pclk_rates = common dso_local global i64* null, align 8
@lrclk_rates = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Found supported PCLK to LRCLK rates 0x%x\0A\00", align 1
@M98090_REG_CLOCK_MODE = common dso_local global i32 0, align 4
@M98090_FREQ_MASK = common dso_local global i32 0, align 4
@M98090_FREQ_SHIFT = common dso_local global i32 0, align 4
@M98090_USE_M1_MASK = common dso_local global i32 0, align 4
@user_pclk_rates = common dso_local global i64* null, align 8
@user_lrclk_rates = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Found user supported PCLK to LRCLK rates\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"i %d ni %lld mi %lld\0A\00", align 1
@ni_value = common dso_local global i32* null, align 8
@mi_value = common dso_local global i32* null, align 8
@M98090_USE_M1_SHIFT = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_NI_MSB = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_NI_LSB = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_MI_MSB = common dso_local global i32 0, align 4
@M98090_REG_CLOCK_RATIO_MI_LSB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"No better method found\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Calculating ni %lld with mi 65536\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @max98090_configure_bclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98090_configure_bclk(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98090_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max98090_priv* %7, %struct.max98090_priv** %3, align 8
  %8 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %9 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %237

17:                                               ; preds = %1
  %18 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %19 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %24 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %237

32:                                               ; preds = %22
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @M98090_REG_MASTER_MODE, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  %36 = load i32, i32* @M98090_MAS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %237

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i64*, i64** @pclk_rates, align 8
  %44 = call i32 @ARRAY_SIZE(i64* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load i64*, i64** @pclk_rates, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %53 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %46
  %57 = load i32*, i32** @lrclk_rates, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %63 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 8
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %74 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %75 = load i32, i32* @M98090_FREQ_MASK, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 8
  %78 = load i32, i32* @M98090_FREQ_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %75, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %83 = load i32, i32* @M98090_USE_M1_MASK, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 0)
  br label %237

85:                                               ; preds = %56, %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %41

89:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %188, %89
  %91 = load i32, i32* %5, align 4
  %92 = load i64*, i64** @user_pclk_rates, align 8
  %93 = call i32 @ARRAY_SIZE(i64* %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %191

95:                                               ; preds = %90
  %96 = load i64*, i64** @user_pclk_rates, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %102 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %187

105:                                              ; preds = %95
  %106 = load i32*, i32** @user_lrclk_rates, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %112 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %187

115:                                              ; preds = %105
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %121 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32*, i32** @ni_value, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** @mi_value, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %128, i32 %133)
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %136 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %137 = load i32, i32* @M98090_FREQ_MASK, align 4
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %135, i32 %136, i32 %137, i32 0)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %140 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %141 = load i32, i32* @M98090_USE_M1_MASK, align 4
  %142 = load i32, i32* @M98090_USE_M1_SHIFT, align 4
  %143 = shl i32 1, %142
  %144 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %140, i32 %141, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %146 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_MSB, align 4
  %147 = load i32*, i32** @ni_value, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 8
  %153 = and i32 %152, 127
  %154 = sext i32 %153 to i64
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %145, i32 %146, i64 %154)
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_LSB, align 4
  %158 = load i32*, i32** @ni_value, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 255
  %164 = sext i32 %163 to i64
  %165 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %156, i32 %157, i64 %164)
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %167 = load i32, i32* @M98090_REG_CLOCK_RATIO_MI_MSB, align 4
  %168 = load i32*, i32** @mi_value, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 127
  %175 = sext i32 %174 to i64
  %176 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %166, i32 %167, i64 %175)
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %178 = load i32, i32* @M98090_REG_CLOCK_RATIO_MI_LSB, align 4
  %179 = load i32*, i32** @mi_value, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 255
  %185 = sext i32 %184 to i64
  %186 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %177, i32 %178, i64 %185)
  br label %237

187:                                              ; preds = %105, %95
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %90

191:                                              ; preds = %90
  %192 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %193 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %194 = load i32, i32* @M98090_FREQ_MASK, align 4
  %195 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %192, i32 %193, i32 %194, i32 0)
  %196 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %197 = load i32, i32* @M98090_REG_CLOCK_MODE, align 4
  %198 = load i32, i32* @M98090_USE_M1_MASK, align 4
  %199 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %196, i32 %197, i32 %198, i32 0)
  %200 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %201 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %202, 50000
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i64 96, i64 48
  %206 = mul i64 65536, %205
  %207 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %208 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = mul i64 %206, %210
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %214 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @do_div(i64 %212, i64 %215)
  %217 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %218 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, ...) @dev_info(i32 %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %221 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %222 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* %4, align 8
  %225 = call i32 (i32, i8*, ...) @dev_info(i32 %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %224)
  %226 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %227 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_MSB, align 4
  %228 = load i64, i64* %4, align 8
  %229 = lshr i64 %228, 8
  %230 = and i64 %229, 127
  %231 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %226, i32 %227, i64 %230)
  %232 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %233 = load i32, i32* @M98090_REG_CLOCK_RATIO_NI_LSB, align 4
  %234 = load i64, i64* %4, align 8
  %235 = and i64 %234, 255
  %236 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %232, i32 %233, i64 %235)
  br label %237

237:                                              ; preds = %191, %115, %66, %39, %27, %12
  ret void
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
