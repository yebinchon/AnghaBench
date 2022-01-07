; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_set_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai.c_stm32_sai_set_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Device not found for node %pOFn\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SAI sync provider data not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_data*, %struct.device_node*, i32, i32)* @stm32_sai_set_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_sync(%struct.stm32_sai_data* %0, %struct.device_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_sai_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.stm32_sai_data*, align 8
  %12 = alloca i32, align 4
  store %struct.stm32_sai_data* %0, %struct.stm32_sai_data** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %13)
  store %struct.platform_device* %14, %struct.platform_device** %10, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.device_node* %22)
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %4
  %29 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %30 = call %struct.stm32_sai_data* @platform_get_drvdata(%struct.platform_device* %29)
  store %struct.stm32_sai_data* %30, %struct.stm32_sai_data** %11, align 8
  %31 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %11, align 8
  %32 = icmp ne %struct.stm32_sai_data* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %6, align 8
  %35 = getelementptr inbounds %struct.stm32_sai_data, %struct.stm32_sai_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @stm32_sai_sync_conf_client(%struct.stm32_sai_data* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %52

48:                                               ; preds = %41
  %49 = load %struct.stm32_sai_data*, %struct.stm32_sai_data** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @stm32_sai_sync_conf_provider(%struct.stm32_sai_data* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %47, %33
  %53 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @put_device(i32* %54)
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %17
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.stm32_sai_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @stm32_sai_sync_conf_client(%struct.stm32_sai_data*, i32) #1

declare dso_local i32 @stm32_sai_sync_conf_provider(%struct.stm32_sai_data*, i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
