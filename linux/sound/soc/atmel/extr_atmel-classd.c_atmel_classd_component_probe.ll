; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.atmel_classd = type { %struct.atmel_classd_pdata* }
%struct.atmel_classd_pdata = type { i32, i32, i64 }

@CLASSD_MR_PWMTYP_MASK = common dso_local global i32 0, align 4
@CLASSD_MR_PWMTYP_SHIFT = common dso_local global i32 0, align 4
@CLASSD_MR_NON_OVERLAP_MASK = common dso_local global i32 0, align 4
@CLASSD_MR_NON_OVERLAP_EN = common dso_local global i32 0, align 4
@CLASSD_MR_NON_OVERLAP_SHIFT = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_MASK = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_5NS = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_SHIFT = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_10NS = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_15NS = common dso_local global i32 0, align 4
@CLASSD_MR_NOVR_VAL_20NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"non-overlapping value %d is invalid, the default value 10 is specified\0A\00", align 1
@CLASSD_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"PWM modulation type is %s, non-overlapping is %s\0A\00", align 1
@pwm_type = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @atmel_classd_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_classd_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.atmel_classd*, align 8
  %5 = alloca %struct.atmel_classd_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call %struct.snd_soc_card* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %3, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %11 = call %struct.atmel_classd* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %10)
  store %struct.atmel_classd* %11, %struct.atmel_classd** %4, align 8
  %12 = load %struct.atmel_classd*, %struct.atmel_classd** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %12, i32 0, i32 0
  %14 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %13, align 8
  store %struct.atmel_classd_pdata* %14, %struct.atmel_classd_pdata** %5, align 8
  %15 = load i32, i32* @CLASSD_MR_PWMTYP_MASK, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %17 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CLASSD_MR_PWMTYP_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @CLASSD_MR_NON_OVERLAP_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %1
  %29 = load i32, i32* @CLASSD_MR_NON_OVERLAP_EN, align 4
  %30 = load i32, i32* @CLASSD_MR_NON_OVERLAP_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @CLASSD_MR_NOVR_VAL_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %64 [
    i32 5, label %40
    i32 10, label %46
    i32 15, label %52
    i32 20, label %58
  ]

40:                                               ; preds = %28
  %41 = load i32, i32* @CLASSD_MR_NOVR_VAL_5NS, align 4
  %42 = load i32, i32* @CLASSD_MR_NOVR_VAL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %77

46:                                               ; preds = %28
  %47 = load i32, i32* @CLASSD_MR_NOVR_VAL_10NS, align 4
  %48 = load i32, i32* @CLASSD_MR_NOVR_VAL_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %77

52:                                               ; preds = %28
  %53 = load i32, i32* @CLASSD_MR_NOVR_VAL_15NS, align 4
  %54 = load i32, i32* @CLASSD_MR_NOVR_VAL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %77

58:                                               ; preds = %28
  %59 = load i32, i32* @CLASSD_MR_NOVR_VAL_20NS, align 4
  %60 = load i32, i32* @CLASSD_MR_NOVR_VAL_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %77

64:                                               ; preds = %28
  %65 = load i32, i32* @CLASSD_MR_NOVR_VAL_10NS, align 4
  %66 = load i32, i32* @CLASSD_MR_NOVR_VAL_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %74 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %64, %58, %52, %46, %40
  br label %78

78:                                               ; preds = %77, %1
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %80 = load i32, i32* @CLASSD_MR, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** @pwm_type, align 8
  %88 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %89 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.atmel_classd_pdata*, %struct.atmel_classd_pdata** %5, align 8
  %95 = getelementptr inbounds %struct.atmel_classd_pdata, %struct.atmel_classd_pdata* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %100 = call i32 @dev_info(i32 %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %93, i8* %99)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.atmel_classd* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
