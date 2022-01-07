; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pm8916_wcd_analog_priv = type { i32, i32, i32, i32*, i32*, i32, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"qcom,micbias1-ext-cap\00", align 1
@MICB_1_EN_EXT_BYP_CAP = common dso_local global i8* null, align 8
@MICB_1_EN_NO_EXT_BYP_CAP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"qcom,micbias2-ext-cap\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"qcom,micbias-lvl\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"qcom,hphl-jack-type-normally-open\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"qcom,gnd-jack-type-normally-open\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"qcom,mbhc-vthreshold-low\00", align 1
@MBHC_MAX_BUTTONS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"qcom,mbhc-vthreshold-high\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"DT property missing, MBHC btn detection disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pm8916_wcd_analog_priv*)* @pm8916_wcd_analog_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wcd_analog_parse_dt(%struct.device* %0, %struct.pm8916_wcd_analog_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.pm8916_wcd_analog_priv* %1, %struct.pm8916_wcd_analog_priv** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @of_property_read_bool(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** @MICB_1_EN_EXT_BYP_CAP, align 8
  %13 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %14 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** @MICB_1_EN_NO_EXT_BYP_CAP, align 8
  %17 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %18 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @of_property_read_bool(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @MICB_1_EN_EXT_BYP_CAP, align 8
  %27 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %28 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load i8*, i8** @MICB_1_EN_NO_EXT_BYP_CAP, align 8
  %31 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %32 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %38 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %37, i32 0, i32 5
  %39 = call i32 @of_property_read_u32(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @of_property_read_bool(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %47 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %51

48:                                               ; preds = %33
  %49 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %50 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @of_property_read_bool(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %59 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %62 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %65 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %70 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* @MBHC_MAX_BUTTONS, align 4
  %74 = call i32 @of_property_read_u32_array(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %79 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  br label %96

80:                                               ; preds = %63
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %85 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* @MBHC_MAX_BUTTONS, align 4
  %89 = call i32 @of_property_read_u32_array(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %94 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %80
  br label %96

96:                                               ; preds = %95, %77
  %97 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %98 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  ret i32 0
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
