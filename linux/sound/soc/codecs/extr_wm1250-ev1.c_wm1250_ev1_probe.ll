; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to read ID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown board ID %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"revision %d\0A\00", align 1
@soc_component_dev_wm1250_ev1 = common dso_local global i32 0, align 4
@wm1250_ev1_dai = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm1250_ev1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1250_ev1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call i32 @dev_set_drvdata(i32* %11, i32* null)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 254
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 3
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %23
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @wm1250_ev1_pdata(%struct.i2c_client* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %38
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @devm_snd_soc_register_component(i32* %52, i32* @soc_component_dev_wm1250_ev1, i32* @wm1250_ev1_dai, i32 1)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @wm1250_ev1_free(%struct.i2c_client* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %56, %48, %31, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @wm1250_ev1_pdata(%struct.i2c_client*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @wm1250_ev1_free(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
