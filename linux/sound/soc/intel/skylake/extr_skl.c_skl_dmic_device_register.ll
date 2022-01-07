; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_dmic_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_dmic_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.hdac_bus = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"dmic-codec\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to allocate dmic device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add dmic device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*)* @skl_dmic_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_dmic_device_register(%struct.skl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %7 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %8 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %7)
  store %struct.hdac_bus* %8, %struct.hdac_bus** %4, align 8
  %9 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = call i32 @platform_device_add(%struct.platform_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %26 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = call i32 @platform_device_put(%struct.platform_device* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %36 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %35, i32 0, i32 0
  store %struct.platform_device* %34, %struct.platform_device** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %24, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
