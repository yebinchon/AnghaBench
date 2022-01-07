; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_log_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_log_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@byt_rt5651_quirk = common dso_local global i32 0, align 4
@BYT_RT5651_DMIC_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"quirk DMIC_MAP enabled\00", align 1
@BYT_RT5651_IN1_MAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"quirk IN1_MAP enabled\00", align 1
@BYT_RT5651_IN2_MAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"quirk IN2_MAP enabled\00", align 1
@BYT_RT5651_IN1_IN2_MAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"quirk IN1_IN2_MAP enabled\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"quirk realtek,jack-detect-source %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"quirk realtek,over-current-threshold-microamp %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"quirk realtek,over-current-scale-factor %ld\0A\00", align 1
@BYT_RT5651_DMIC_EN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"quirk DMIC enabled\00", align 1
@BYT_RT5651_MCLK_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"quirk MCLK_EN enabled\00", align 1
@BYT_RT5651_MCLK_25MHZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"quirk MCLK_25MHZ enabled\00", align 1
@BYT_RT5651_SSP2_AIF2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"quirk SSP2_AIF2 enabled\0A\00", align 1
@BYT_RT5651_SSP0_AIF1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"quirk SSP0_AIF1 enabled\0A\00", align 1
@BYT_RT5651_SSP0_AIF2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"quirk SSP0_AIF2 enabled\0A\00", align 1
@BYT_RT5651_MONO_SPEAKER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"quirk MONO_SPEAKER enabled\0A\00", align 1
@BYT_RT5651_JD_NOT_INV = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"quirk JD_NOT_INV enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @log_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_quirks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load i32, i32* @byt_rt5651_quirk, align 4
  %4 = call i64 @BYT_RT5651_MAP(i32 %3)
  %5 = load i64, i64* @BYT_RT5651_DMIC_MAP, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @byt_rt5651_quirk, align 4
  %12 = call i64 @BYT_RT5651_MAP(i32 %11)
  %13 = load i64, i64* @BYT_RT5651_IN1_MAP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @byt_rt5651_quirk, align 4
  %20 = call i64 @BYT_RT5651_MAP(i32 %19)
  %21 = load i64, i64* @BYT_RT5651_IN2_MAP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @byt_rt5651_quirk, align 4
  %28 = call i64 @BYT_RT5651_MAP(i32 %27)
  %29 = load i64, i64* @BYT_RT5651_IN1_IN2_MAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @byt_rt5651_quirk, align 4
  %36 = call i64 @BYT_RT5651_JDSRC(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = load i32, i32* @byt_rt5651_quirk, align 4
  %41 = call i64 @BYT_RT5651_JDSRC(i32 %40)
  %42 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %41)
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = load i32, i32* @byt_rt5651_quirk, align 4
  %45 = call i32 @BYT_RT5651_OVCD_TH(i32 %44)
  %46 = mul nsw i32 %45, 100
  %47 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = load i32, i32* @byt_rt5651_quirk, align 4
  %50 = call i32 @BYT_RT5651_OVCD_SF(i32 %49)
  %51 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %38, %34
  %53 = load i32, i32* @byt_rt5651_quirk, align 4
  %54 = load i32, i32* @BYT_RT5651_DMIC_EN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %2, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* @byt_rt5651_quirk, align 4
  %62 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %2, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* @byt_rt5651_quirk, align 4
  %70 = load i32, i32* @BYT_RT5651_MCLK_25MHZ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %2, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* @byt_rt5651_quirk, align 4
  %78 = load i32, i32* @BYT_RT5651_SSP2_AIF2, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %2, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @byt_rt5651_quirk, align 4
  %86 = load i32, i32* @BYT_RT5651_SSP0_AIF1, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %2, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* @byt_rt5651_quirk, align 4
  %94 = load i32, i32* @BYT_RT5651_SSP0_AIF2, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %2, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* @byt_rt5651_quirk, align 4
  %102 = load i32, i32* @BYT_RT5651_MONO_SPEAKER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.device*, %struct.device** %2, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* @byt_rt5651_quirk, align 4
  %110 = load i32, i32* @BYT_RT5651_JD_NOT_INV, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %2, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  ret void
}

declare dso_local i64 @BYT_RT5651_MAP(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @BYT_RT5651_JDSRC(i32) #1

declare dso_local i32 @BYT_RT5651_OVCD_TH(i32) #1

declare dso_local i32 @BYT_RT5651_OVCD_SF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
