; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5682_priv = type { i32, i32 }

@RT5682_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5682_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5682_GLB_CLK = common dso_local global i32 0, align 4
@RT5682_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5682_HP_IMP_SENS_CTRL_19 = common dso_local global i32 0, align 4
@RT5682_CHOP_DAC = common dso_local global i32 0, align 4
@RT5682_CALIB_ADC_CTRL = common dso_local global i32 0, align 4
@RT5682_STO1_ADC_MIXER = common dso_local global i32 0, align 4
@RT5682_CAL_REC = common dso_local global i32 0, align 4
@RT5682_HP_CALIB_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_HP_LOGIC_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_HP_CALIB_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_HP_CALIB_CTRL_3 = common dso_local global i32 0, align 4
@RT5682_A_DAC1_MUX = common dso_local global i32 0, align 4
@RT5682_HP_CALIB_STA_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"HP Calibration Failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5682_priv*)* @rt5682_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5682_calibrate(%struct.rt5682_priv* %0) #0 {
  %2 = alloca %struct.rt5682_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt5682_priv* %0, %struct.rt5682_priv** %2, align 8
  %5 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %9 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rt5682_reset(i32 %10)
  %12 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %16 = call i32 @regmap_write(i32 %14, i32 %15, i32 41647)
  %17 = call i32 @usleep_range(i32 15000, i32 20000)
  %18 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %19 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 62127)
  %23 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %24 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RT5682_MICBIAS_2, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 768)
  %28 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %29 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RT5682_GLB_CLK, align 4
  %32 = call i32 @regmap_write(i32 %30, i32 %31, i32 32768)
  %33 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %34 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5682_PWR_DIG_1, align 4
  %37 = call i32 @regmap_write(i32 %35, i32 %36, i32 256)
  %38 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %39 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RT5682_HP_IMP_SENS_CTRL_19, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 14336)
  %43 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %44 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RT5682_CHOP_DAC, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 12288)
  %48 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %49 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RT5682_CALIB_ADC_CTRL, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 28677)
  %53 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %54 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RT5682_STO1_ADC_MIXER, align 4
  %57 = call i32 @regmap_write(i32 %55, i32 %56, i32 26732)
  %58 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %59 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RT5682_CAL_REC, align 4
  %62 = call i32 @regmap_write(i32 %60, i32 %61, i32 3341)
  %63 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %64 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RT5682_HP_CALIB_CTRL_2, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 801)
  %68 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %69 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RT5682_HP_LOGIC_CTRL_2, align 4
  %72 = call i32 @regmap_write(i32 %70, i32 %71, i32 4)
  %73 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %74 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RT5682_HP_CALIB_CTRL_1, align 4
  %77 = call i32 @regmap_write(i32 %75, i32 %76, i32 31744)
  %78 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %79 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RT5682_HP_CALIB_CTRL_3, align 4
  %82 = call i32 @regmap_write(i32 %80, i32 %81, i32 1697)
  %83 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %84 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RT5682_A_DAC1_MUX, align 4
  %87 = call i32 @regmap_write(i32 %85, i32 %86, i32 785)
  %88 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %89 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RT5682_HP_CALIB_CTRL_1, align 4
  %92 = call i32 @regmap_write(i32 %90, i32 %91, i32 31744)
  %93 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %94 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RT5682_HP_CALIB_CTRL_1, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 64512)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %113, %1
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 60
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %103 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RT5682_HP_CALIB_STA_1, align 4
  %106 = call i32 @regmap_read(i32 %104, i32 %105, i32* %3)
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, 32768
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %116

111:                                              ; preds = %101
  %112 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %98

116:                                              ; preds = %110, %98
  %117 = load i32, i32* %4, align 4
  %118 = icmp sge i32 %117, 60
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %116
  %122 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %123 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %126 = call i32 @regmap_write(i32 %124, i32 %125, i32 687)
  %127 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %128 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RT5682_MICBIAS_2, align 4
  %131 = call i32 @regmap_write(i32 %129, i32 %130, i32 128)
  %132 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %133 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RT5682_GLB_CLK, align 4
  %136 = call i32 @regmap_write(i32 %134, i32 %135, i32 0)
  %137 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %138 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RT5682_PWR_DIG_1, align 4
  %141 = call i32 @regmap_write(i32 %139, i32 %140, i32 0)
  %142 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %143 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RT5682_CHOP_DAC, align 4
  %146 = call i32 @regmap_write(i32 %144, i32 %145, i32 8192)
  %147 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %148 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RT5682_CALIB_ADC_CTRL, align 4
  %151 = call i32 @regmap_write(i32 %149, i32 %150, i32 8197)
  %152 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %153 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @RT5682_STO1_ADC_MIXER, align 4
  %156 = call i32 @regmap_write(i32 %154, i32 %155, i32 49348)
  %157 = load %struct.rt5682_priv*, %struct.rt5682_priv** %2, align 8
  %158 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt5682_reset(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
