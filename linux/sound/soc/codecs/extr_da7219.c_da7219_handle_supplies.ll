; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_handle_supplies.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_handle_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.regulator*, i32 }
%struct.regulator = type { i32 }

@DA7219_IO_VOLTAGE_LEVEL_2_5V_3_6V = common dso_local global i32 0, align 4
@DA7219_NUM_SUPPLIES = common dso_local global i32 0, align 4
@da7219_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to get supplies\00", align 1
@DA7219_SUPPLY_VDDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid VDDIO voltage\0A\00", align 1
@DA7219_IO_VOLTAGE_LEVEL_1_2V_2_8V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to enable supplies\00", align 1
@DA7219_SYSTEM_ACTIVE = common dso_local global i32 0, align 4
@DA7219_SYSTEM_ACTIVE_MASK = common dso_local global i32 0, align 4
@DA7219_IO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da7219_handle_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_handle_supplies(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7219_priv*, align 8
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.da7219_priv* %10, %struct.da7219_priv** %4, align 8
  %11 = load i32, i32* @DA7219_IO_VOLTAGE_LEVEL_2_5V_3_6V, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DA7219_NUM_SUPPLIES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32*, i32** @da7219_supply_names, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %23 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DA7219_NUM_SUPPLIES, align 4
  %37 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %38 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @devm_regulator_bulk_get(i32 %35, i32 %36, %struct.TYPE_3__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %32
  %50 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %51 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* @DA7219_SUPPLY_VDDIO, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.regulator*, %struct.regulator** %55, align 8
  store %struct.regulator* %56, %struct.regulator** %5, align 8
  %57 = load %struct.regulator*, %struct.regulator** %5, align 8
  %58 = call i32 @regulator_get_voltage(%struct.regulator* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1200000
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %72

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 2800000
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @DA7219_IO_VOLTAGE_LEVEL_1_2V_2_8V, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* @DA7219_NUM_SUPPLIES, align 4
  %74 = load %struct.da7219_priv*, %struct.da7219_priv** %4, align 8
  %75 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @regulator_bulk_enable(i32 %73, %struct.TYPE_3__* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %95

86:                                               ; preds = %72
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i32, i32* @DA7219_SYSTEM_ACTIVE, align 4
  %89 = load i32, i32* @DA7219_SYSTEM_ACTIVE_MASK, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = load i32, i32* @DA7219_IO_CTRL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %80, %43
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
