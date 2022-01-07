; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_soc_component = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pm8916_wcd_analog_priv = type { %struct.snd_soc_component*, i8*, i8*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [34 x i8] c"failed to enable regulators (%d)\0A\00", align 1
@CDC_D_REVISION1 = common dso_local global i32 0, align 4
@CDC_D_PERPH_SUBTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PMIC REV: %d\09 CODEC Version: %d\0A\00", align 1
@CDC_D_PERPH_RESET_CTL4 = common dso_local global i32 0, align 4
@CDC_A_PERPH_RESET_CTL4 = common dso_local global i32 0, align 4
@wcd_reg_defaults_2_0 = common dso_local global %struct.TYPE_7__* null, align 8
@CDC_D_CDC_RST_CTL = common dso_local global i32 0, align 4
@RST_CTL_DIG_SW_RST_N_MASK = common dso_local global i32 0, align 4
@RST_CTL_DIG_SW_RST_N_REMOVE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @pm8916_wcd_analog_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wcd_analog_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = call %struct.pm8916_wcd_analog_priv* @dev_get_drvdata(%struct.TYPE_8__* %9)
  store %struct.pm8916_wcd_analog_priv* %10, %struct.pm8916_wcd_analog_priv** %4, align 8
  %11 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %12 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %13)
  %15 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %16 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call i32 @regulator_bulk_enable(i32 %14, %struct.TYPE_7__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %100

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_get_regmap(i32 %34, i32* null)
  %36 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %29, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %39 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %37, %struct.pm8916_wcd_analog_priv* %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @CDC_D_REVISION1, align 4
  %42 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  %43 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %44 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @CDC_D_PERPH_SUBTYPE, align 4
  %47 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %45, i32 %46)
  %48 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %49 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %54 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %57 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @dev_info(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i32, i32* @CDC_D_PERPH_RESET_CTL4, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i32 %61, i32 1)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = load i32, i32* @CDC_A_PERPH_RESET_CTL4, align 4
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 1)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %86, %28
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcd_reg_defaults_2_0, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcd_reg_defaults_2_0, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcd_reg_defaults_2_0, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %92 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %91, i32 0, i32 0
  store %struct.snd_soc_component* %90, %struct.snd_soc_component** %92, align 8
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = load i32, i32* @CDC_D_CDC_RST_CTL, align 4
  %95 = load i32, i32* @RST_CTL_DIG_SW_RST_N_MASK, align 4
  %96 = load i32, i32* @RST_CTL_DIG_SW_RST_N_REMOVE_RESET, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %4, align 8
  %99 = call i32 @pm8916_wcd_setup_mbhc(%struct.pm8916_wcd_analog_priv* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %89, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.pm8916_wcd_analog_priv* @dev_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.pm8916_wcd_analog_priv*) #1

declare dso_local i8* @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i8*, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @pm8916_wcd_setup_mbhc(%struct.pm8916_wcd_analog_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
