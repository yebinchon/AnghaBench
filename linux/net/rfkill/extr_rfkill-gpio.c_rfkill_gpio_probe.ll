; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rfkill_gpio_data = type { i8*, i32, i32, %struct.gpio_desc*, %struct.gpio_desc*, i32 }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rfkill_gpio_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%s device registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rfkill_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rfkill_gpio_data*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rfkill_gpio_data* @devm_kzalloc(i32* %9, i32 40, i32 %10)
  store %struct.rfkill_gpio_data* %11, %struct.rfkill_gpio_data** %4, align 8
  %12 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %13 = icmp ne %struct.rfkill_gpio_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %148

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %21 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %20, i32 0, i32 0
  %22 = call i32 @device_property_read_string(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @device_property_read_string(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %26 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %27 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i8* @dev_name(i32* %32)
  %34 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %35 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %30, %17
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @rfkill_find_type(i8* %37)
  %39 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %40 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i64 @ACPI_HANDLE(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %49 = call i32 @rfkill_gpio_acpi_probe(i32* %47, %struct.rfkill_gpio_data* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %148

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(i32* %57, i32* null)
  %59 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %60 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %64 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store %struct.gpio_desc* %64, %struct.gpio_desc** %5, align 8
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %66 = call i64 @IS_ERR(%struct.gpio_desc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %70 = call i32 @PTR_ERR(%struct.gpio_desc* %69)
  store i32 %70, i32* %2, align 4
  br label %148

71:                                               ; preds = %55
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %73 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %74 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %73, i32 0, i32 4
  store %struct.gpio_desc* %72, %struct.gpio_desc** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %78 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store %struct.gpio_desc* %78, %struct.gpio_desc** %5, align 8
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %80 = call i64 @IS_ERR(%struct.gpio_desc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %84 = call i32 @PTR_ERR(%struct.gpio_desc* %83)
  store i32 %84, i32* %2, align 4
  br label %148

85:                                               ; preds = %71
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %87 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %88 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %87, i32 0, i32 3
  store %struct.gpio_desc* %86, %struct.gpio_desc** %88, align 8
  %89 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %90 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %89, i32 0, i32 4
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %90, align 8
  %92 = icmp ne %struct.gpio_desc* %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %85
  %94 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %95 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %94, i32 0, i32 3
  %96 = load %struct.gpio_desc*, %struct.gpio_desc** %95, align 8
  %97 = icmp ne %struct.gpio_desc* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %148

104:                                              ; preds = %93, %85
  %105 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %106 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %111 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %114 = call i32 @rfkill_alloc(i8* %107, i32* %109, i32 %112, i32* @rfkill_gpio_ops, %struct.rfkill_gpio_data* %113)
  %115 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %116 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %118 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %104
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %148

124:                                              ; preds = %104
  %125 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %126 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @rfkill_register(i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %142

132:                                              ; preds = %124
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %135 = call i32 @platform_set_drvdata(%struct.platform_device* %133, %struct.rfkill_gpio_data* %134)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %139 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @dev_info(i32* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %140)
  store i32 0, i32* %2, align 4
  br label %148

142:                                              ; preds = %131
  %143 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %4, align 8
  %144 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @rfkill_destroy(i32 %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %142, %132, %121, %98, %82, %68, %52, %14
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.rfkill_gpio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @device_property_read_string(i32*, i8*, i8**) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @rfkill_find_type(i8*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @rfkill_gpio_acpi_probe(i32*, %struct.rfkill_gpio_data*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rfkill_alloc(i8*, i32*, i32, i32*, %struct.rfkill_gpio_data*) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rfkill_gpio_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
