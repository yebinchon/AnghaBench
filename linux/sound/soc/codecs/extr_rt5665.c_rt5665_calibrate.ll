; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5665_priv = type { i32, i32, i32 }

@RT5665_RESET = common dso_local global i32 0, align 4
@RT5665_BIAS_CUR_CTRL_8 = common dso_local global i32 0, align 4
@RT5665_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5665_MONOMIX_IN_GAIN = common dso_local global i32 0, align 4
@RT5665_MONO_OUT = common dso_local global i32 0, align 4
@RT5665_PWR_MIXER = common dso_local global i32 0, align 4
@RT5665_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5665_EJD_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_HP_LOGIC_CTRL_2 = common dso_local global i32 0, align 4
@RT5665_DIG_MISC = common dso_local global i32 0, align 4
@RT5665_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5665_GLB_CLK = common dso_local global i32 0, align 4
@RT5665_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5665_CHOP_DAC = common dso_local global i32 0, align 4
@RT5665_CALIB_ADC_CTRL = common dso_local global i32 0, align 4
@RT5665_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5665_HP_CALIB_CTRL_2 = common dso_local global i32 0, align 4
@RT5665_HP_CALIB_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_HP_CALIB_STA_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"HP Calibration Failure\0A\00", align 1
@RT5665_MONO_AMP_CALIB_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_MONO_AMP_CALIB_STA1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MONO Calibration Failure\0A\00", align 1
@RT5665_ASRC_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5665_priv*)* @rt5665_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5665_calibrate(%struct.rt5665_priv* %0) #0 {
  %2 = alloca %struct.rt5665_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt5665_priv* %0, %struct.rt5665_priv** %2, align 8
  %5 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %9 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regcache_cache_bypass(i32 %10, i32 1)
  %12 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RT5665_RESET, align 4
  %16 = call i32 @regmap_write(i32 %14, i32 %15, i32 0)
  %17 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %18 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RT5665_BIAS_CUR_CTRL_8, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 42498)
  %22 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %23 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RT5665_HP_CHARGE_PUMP_1, align 4
  %26 = call i32 @regmap_write(i32 %24, i32 %25, i32 3110)
  %27 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RT5665_MONOMIX_IN_GAIN, align 4
  %31 = call i32 @regmap_write(i32 %29, i32 %30, i32 543)
  %32 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %33 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RT5665_MONO_OUT, align 4
  %36 = call i32 @regmap_write(i32 %34, i32 %35, i32 18442)
  %37 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %38 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RT5665_PWR_MIXER, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i32 2111)
  %42 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %43 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RT5665_PWR_DIG_1, align 4
  %46 = call i32 @regmap_write(i32 %44, i32 %45, i32 384)
  %47 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %48 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RT5665_EJD_CTRL_1, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 16448)
  %52 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %53 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RT5665_HP_LOGIC_CTRL_2, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 0)
  %57 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %58 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RT5665_DIG_MISC, align 4
  %61 = call i32 @regmap_write(i32 %59, i32 %60, i32 1)
  %62 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %63 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RT5665_MICBIAS_2, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 896)
  %67 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %68 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RT5665_GLB_CLK, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 32768)
  %72 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %73 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  %76 = call i32 @regmap_write(i32 %74, i32 %75, i32 4096)
  %77 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %78 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RT5665_CHOP_DAC, align 4
  %81 = call i32 @regmap_write(i32 %79, i32 %80, i32 12336)
  %82 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %83 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RT5665_CALIB_ADC_CTRL, align 4
  %86 = call i32 @regmap_write(i32 %84, i32 %85, i32 15365)
  %87 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %88 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 43582)
  %92 = call i32 @usleep_range(i32 15000, i32 20000)
  %93 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %94 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 65150)
  %98 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %99 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RT5665_HP_CALIB_CTRL_2, align 4
  %102 = call i32 @regmap_write(i32 %100, i32 %101, i32 801)
  %103 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %104 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RT5665_HP_CALIB_CTRL_1, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 64512)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %1, %134
  %109 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %110 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RT5665_HP_CALIB_STA_1, align 4
  %113 = call i32 @regmap_read(i32 %111, i32 %112, i32* %3)
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, 32768
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %120

119:                                              ; preds = %108
  br label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = icmp sgt i32 %121, 60
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %126 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RT5665_RESET, align 4
  %129 = call i32 @regmap_write(i32 %127, i32 %128, i32 0)
  %130 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %131 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @regcache_cache_bypass(i32 %132, i32 0)
  br label %200

134:                                              ; preds = %120
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %108

137:                                              ; preds = %119
  %138 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %139 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @RT5665_MONO_AMP_CALIB_CTRL_1, align 4
  %142 = call i32 @regmap_write(i32 %140, i32 %141, i32 40484)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %169
  %144 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %145 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RT5665_MONO_AMP_CALIB_STA1, align 4
  %148 = call i32 @regmap_read(i32 %146, i32 %147, i32* %3)
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, 32768
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %155

154:                                              ; preds = %143
  br label %172

155:                                              ; preds = %152
  %156 = load i32, i32* %4, align 4
  %157 = icmp sgt i32 %156, 60
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %161 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RT5665_RESET, align 4
  %164 = call i32 @regmap_write(i32 %162, i32 %163, i32 0)
  %165 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %166 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @regcache_cache_bypass(i32 %167, i32 0)
  br label %200

169:                                              ; preds = %155
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %143

172:                                              ; preds = %154
  %173 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %174 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @RT5665_RESET, align 4
  %177 = call i32 @regmap_write(i32 %175, i32 %176, i32 0)
  %178 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %179 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @regcache_cache_bypass(i32 %180, i32 0)
  %182 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %183 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @regcache_mark_dirty(i32 %184)
  %186 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %187 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @regcache_sync(i32 %188)
  %190 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %191 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @RT5665_BIAS_CUR_CTRL_8, align 4
  %194 = call i32 @regmap_write(i32 %192, i32 %193, i32 42498)
  %195 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %196 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @RT5665_ASRC_8, align 4
  %199 = call i32 @regmap_write(i32 %197, i32 %198, i32 288)
  br label %200

200:                                              ; preds = %172, %158, %123
  %201 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %202 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %201, i32 0, i32 0
  store i32 1, i32* %202, align 4
  %203 = load %struct.rt5665_priv*, %struct.rt5665_priv** %2, align 8
  %204 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %203, i32 0, i32 1
  %205 = call i32 @mutex_unlock(i32* %204)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
