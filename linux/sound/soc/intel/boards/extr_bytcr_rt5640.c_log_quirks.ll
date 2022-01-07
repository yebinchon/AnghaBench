; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_log_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_log_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@byt_rt5640_quirk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"quirk DMIC1_MAP enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"quirk DMIC2_MAP enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"quirk IN1_MAP enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"quirk IN3_MAP enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"quirk map 0x%x is not supported, microphone input will not work\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"quirk realtek,jack-detect-source %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"quirk realtek,over-current-threshold-microamp %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"quirk realtek,over-current-scale-factor %ld\0A\00", align 1
@BYT_RT5640_JD_NOT_INV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"quirk JD_NOT_INV enabled\0A\00", align 1
@BYT_RT5640_MONO_SPEAKER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"quirk MONO_SPEAKER enabled\0A\00", align 1
@BYT_RT5640_DIFF_MIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"quirk DIFF_MIC enabled\0A\00", align 1
@BYT_RT5640_SSP0_AIF1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"quirk SSP0_AIF1 enabled\0A\00", align 1
@BYT_RT5640_SSP0_AIF2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"quirk SSP0_AIF2 enabled\0A\00", align 1
@BYT_RT5640_SSP2_AIF2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"quirk SSP2_AIF2 enabled\0A\00", align 1
@is_bytcr = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [95 x i8] c"Invalid routing, bytcr detected but no SSP0-based quirk, audio cannot work with SSP2 on bytcr\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"Invalid routing, SSP0 cannot be connected to both AIF1 and AIF2\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"Invalid routing, cannot have both SSP0 and SSP2 connected to codec\0A\00", align 1
@BYT_RT5640_MCLK_EN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"quirk MCLK_EN enabled\0A\00", align 1
@BYT_RT5640_MCLK_25MHZ = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"quirk MCLK_25MHZ enabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"quirk MCLK_25MHZ enabled but quirk MCLK not selected, will be ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @log_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_quirks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @byt_rt5640_quirk, align 4
  %10 = call i32 @BYT_RT5640_MAP(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %24 [
    i32 131, label %12
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
  ]

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %21, %18, %15, %12
  %29 = load i32, i32* @byt_rt5640_quirk, align 4
  %30 = call i64 @BYT_RT5640_JDSRC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = load i32, i32* @byt_rt5640_quirk, align 4
  %35 = call i64 @BYT_RT5640_JDSRC(i32 %34)
  %36 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %35)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = load i32, i32* @byt_rt5640_quirk, align 4
  %39 = call i32 @BYT_RT5640_OVCD_TH(i32 %38)
  %40 = mul nsw i32 %39, 100
  %41 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = load i32, i32* @byt_rt5640_quirk, align 4
  %44 = call i32 @BYT_RT5640_OVCD_SF(i32 %43)
  %45 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %32, %28
  %47 = load i32, i32* @byt_rt5640_quirk, align 4
  %48 = load i32, i32* @BYT_RT5640_JD_NOT_INV, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* @byt_rt5640_quirk, align 4
  %56 = load i32, i32* @BYT_RT5640_MONO_SPEAKER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @byt_rt5640_quirk, align 4
  %64 = load i32, i32* @BYT_RT5640_DIFF_MIC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %2, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @byt_rt5640_quirk, align 4
  %72 = load i32, i32* @BYT_RT5640_SSP0_AIF1, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %2, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* @byt_rt5640_quirk, align 4
  %80 = load i32, i32* @BYT_RT5640_SSP0_AIF2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %2, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* @byt_rt5640_quirk, align 4
  %88 = load i32, i32* @BYT_RT5640_SSP2_AIF2, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %2, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i64, i64* @is_bytcr, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.device*, %struct.device** %2, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97, %94
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.device*, %struct.device** %2, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106, %103
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.device*, %struct.device** %2, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115, %112
  %122 = load i32, i32* @byt_rt5640_quirk, align 4
  %123 = load i32, i32* @BYT_RT5640_MCLK_EN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %2, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* @byt_rt5640_quirk, align 4
  %131 = load i32, i32* @BYT_RT5640_MCLK_25MHZ, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.device*, %struct.device** %2, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  br label %143

140:                                              ; preds = %134
  %141 = load %struct.device*, %struct.device** %2, align 8
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %141, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %129
  ret void
}

declare dso_local i32 @BYT_RT5640_MAP(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @BYT_RT5640_JDSRC(i32) #1

declare dso_local i32 @BYT_RT5640_OVCD_TH(i32) #1

declare dso_local i32 @BYT_RT5640_OVCD_SF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
