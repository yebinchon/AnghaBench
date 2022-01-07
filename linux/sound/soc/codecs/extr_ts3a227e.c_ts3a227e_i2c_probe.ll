; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ts3a227e = type { i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ts3a227e_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to parse device property: %d\0A\00", align 1
@ts3a227e_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"TS3A227E\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot request irq %d (%d)\0A\00", align 1
@ts3a227e_soc_driver = common dso_local global i32 0, align 4
@TS3A227E_REG_INTERRUPT_DISABLE = common dso_local global i32 0, align 4
@INTB_DISABLE = common dso_local global i32 0, align 4
@ADC_COMPLETE_INT_DISABLE = common dso_local global i32 0, align 4
@TS3A227E_REG_ACCESSORY_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ts3a227e_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts3a227e_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ts3a227e*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ts3a227e* @devm_kzalloc(%struct.device* %13, i32 16, i32 %14)
  store %struct.ts3a227e* %15, %struct.ts3a227e** %6, align 8
  %16 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %17 = icmp eq %struct.ts3a227e* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.ts3a227e* %23)
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %27 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %26, i32 0, i32 2
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %32 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @ts3a227e_regmap_config)
  %35 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %36 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %38 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %44 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %107

47:                                               ; preds = %21
  %48 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @ts3a227e_parse_device_property(%struct.ts3a227e* %48, %struct.device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %107

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ts3a227e_interrupt, align 4
  %64 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %65 = load i32, i32* @IRQF_ONESHOT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %68 = call i32 @devm_request_threaded_irq(%struct.device* %59, i32 %62, i32* null, i32 %63, i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ts3a227e* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %58
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %107

79:                                               ; preds = %58
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @devm_snd_soc_register_component(%struct.device* %81, i32* @ts3a227e_soc_driver, i32* null, i32 0)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %89 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TS3A227E_REG_INTERRUPT_DISABLE, align 4
  %92 = load i32, i32* @INTB_DISABLE, align 4
  %93 = load i32, i32* @ADC_COMPLETE_INT_DISABLE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @ADC_COMPLETE_INT_DISABLE, align 4
  %96 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %94, i32 %95)
  %97 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %98 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TS3A227E_REG_ACCESSORY_STATUS, align 4
  %101 = call i32 @regmap_read(i32 %99, i32 %100, i32* %9)
  %102 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ts3a227e_new_jack_state(%struct.ts3a227e* %102, i32 %103)
  %105 = load %struct.ts3a227e*, %struct.ts3a227e** %6, align 8
  %106 = call i32 @ts3a227e_jack_report(%struct.ts3a227e* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %87, %85, %71, %53, %42, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.ts3a227e* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ts3a227e*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ts3a227e_parse_device_property(%struct.ts3a227e*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.ts3a227e*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ts3a227e_new_jack_state(%struct.ts3a227e*, i32) #1

declare dso_local i32 @ts3a227e_jack_report(%struct.ts3a227e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
