; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs53l30_private = type { i32, i32 }

@CS53L30_PWRCTL = common dso_local global i32 0, align 4
@CS53L30_PDN_LP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable MCLK: %d\0A\00", align 1
@CS53L30_MCLKCTL = common dso_local global i32 0, align 4
@CS53L30_MCLK_DIS_MASK = common dso_local global i32 0, align 4
@CS53L30_PDN_ULP_MASK = common dso_local global i32 0, align 4
@CS53L30_PDN_ULP = common dso_local global i32 0, align 4
@CS53L30_INT_MASK = common dso_local global i32 0, align 4
@CS53L30_PDN_DONE = common dso_local global i32 0, align 4
@CS53L30_SFT_RAMP = common dso_local global i32 0, align 4
@CS53L30_DIGSFT_MASK = common dso_local global i32 0, align 4
@CS53L30_PDN_POLL_MAX = common dso_local global i32 0, align 4
@CS53L30_IS = common dso_local global i32 0, align 4
@CS53L30_MCLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs53l30_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs53l30_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.cs53l30_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call %struct.cs53l30_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs53l30_private* %15, %struct.cs53l30_private** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %162 [
    i32 130, label %17
    i32 129, label %18
    i32 128, label %31
    i32 131, label %73
  ]

17:                                               ; preds = %2
  br label %162

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %25 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CS53L30_PWRCTL, align 4
  %28 = load i32, i32* @CS53L30_PDN_LP_MASK, align 4
  %29 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %23, %18
  br label %162

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %38 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_prepare_enable(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %163

50:                                               ; preds = %36
  %51 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %52 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CS53L30_MCLKCTL, align 4
  %55 = load i32, i32* @CS53L30_MCLK_DIS_MASK, align 4
  %56 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 0)
  %57 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %58 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CS53L30_PWRCTL, align 4
  %61 = load i32, i32* @CS53L30_PDN_ULP_MASK, align 4
  %62 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 0)
  %63 = call i32 @msleep(i32 50)
  br label %72

64:                                               ; preds = %31
  %65 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %66 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CS53L30_PWRCTL, align 4
  %69 = load i32, i32* @CS53L30_PDN_ULP_MASK, align 4
  %70 = load i32, i32* @CS53L30_PDN_ULP, align 4
  %71 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %50
  br label %162

73:                                               ; preds = %2
  %74 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %75 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CS53L30_INT_MASK, align 4
  %78 = load i32, i32* @CS53L30_PDN_DONE, align 4
  %79 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %81 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CS53L30_SFT_RAMP, align 4
  %84 = call i32 @regmap_read(i32 %82, i32 %83, i32* %8)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @CS53L30_DIGSFT_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* @CS53L30_PDN_POLL_MAX, align 4
  store i32 %90, i32* %10, align 4
  br label %92

91:                                               ; preds = %73
  store i32 10, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %89
  %93 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %94 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CS53L30_PWRCTL, align 4
  %97 = load i32, i32* @CS53L30_PDN_ULP_MASK, align 4
  %98 = load i32, i32* @CS53L30_PDN_ULP, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = call i32 @msleep(i32 20)
  %101 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %102 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CS53L30_IS, align 4
  %105 = call i32 @regmap_read(i32 %103, i32 %104, i32* %8)
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %140, %92
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 10
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = call i32 @usleep_range(i32 1000, i32 1100)
  %115 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %116 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CS53L30_IS, align 4
  %119 = call i32 @regmap_read(i32 %117, i32 %118, i32* %8)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @CS53L30_PDN_DONE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %143

125:                                              ; preds = %113
  br label %139

126:                                              ; preds = %110
  %127 = call i32 @usleep_range(i32 10000, i32 10100)
  %128 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %129 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CS53L30_IS, align 4
  %132 = call i32 @regmap_read(i32 %130, i32 %131, i32* %8)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @CS53L30_PDN_DONE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %143

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %106

143:                                              ; preds = %137, %124, %106
  %144 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %145 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CS53L30_INT_MASK, align 4
  %148 = load i32, i32* @CS53L30_PDN_DONE, align 4
  %149 = load i32, i32* @CS53L30_PDN_DONE, align 4
  %150 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %152 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CS53L30_MCLKCTL, align 4
  %155 = load i32, i32* @CS53L30_MCLK_DIS_MASK, align 4
  %156 = load i32, i32* @CS53L30_MCLK_DIS, align 4
  %157 = call i32 @regmap_update_bits(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.cs53l30_private*, %struct.cs53l30_private** %7, align 8
  %159 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @clk_disable_unprepare(i32 %160)
  br label %162

162:                                              ; preds = %2, %143, %72, %30, %17
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %43
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.cs53l30_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
