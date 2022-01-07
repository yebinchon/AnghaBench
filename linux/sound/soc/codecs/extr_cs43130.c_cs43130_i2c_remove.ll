; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cs43130_private = type { i64, i32, i32, i32, i32, i64, i32 }

@CS43130_XTAL_UNUSED = common dso_local global i64 0, align 8
@CS43130_INT_MASK_1 = common dso_local global i32 0, align 4
@CS43130_XTAL_ERR_INT = common dso_local global i32 0, align 4
@CS43130_XTAL_ERR_INT_SHIFT = common dso_local global i32 0, align 4
@CS43130_HP_PLUG_INT = common dso_local global i32 0, align 4
@CS43130_HP_UNPLUG_INT = common dso_local global i32 0, align 4
@dev_attr_hpload_dc_l = common dso_local global i32 0, align 4
@dev_attr_hpload_dc_r = common dso_local global i32 0, align 4
@dev_attr_hpload_ac_l = common dso_local global i32 0, align 4
@dev_attr_hpload_ac_r = common dso_local global i32 0, align 4
@CS43130_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @cs43130_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cs43130_private*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.cs43130_private* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.cs43130_private* %5, %struct.cs43130_private** %3, align 8
  %6 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %7 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CS43130_XTAL_UNUSED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %13 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %16 = load i32, i32* @CS43130_XTAL_ERR_INT, align 4
  %17 = load i32, i32* @CS43130_XTAL_ERR_INT_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %22 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CS43130_INT_MASK_1, align 4
  %25 = load i32, i32* @CS43130_HP_PLUG_INT, align 4
  %26 = load i32, i32* @CS43130_HP_UNPLUG_INT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CS43130_HP_PLUG_INT, align 4
  %29 = load i32, i32* @CS43130_HP_UNPLUG_INT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %33 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %20
  %37 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %38 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %37, i32 0, i32 4
  %39 = call i32 @cancel_work_sync(i32* %38)
  %40 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %41 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @flush_workqueue(i32 %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @device_remove_file(i32* %45, i32* @dev_attr_hpload_dc_l)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @device_remove_file(i32* %48, i32* @dev_attr_hpload_dc_r)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @device_remove_file(i32* %51, i32* @dev_attr_hpload_ac_l)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @device_remove_file(i32* %54, i32* @dev_attr_hpload_ac_r)
  br label %56

56:                                               ; preds = %36, %20
  %57 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %58 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpiod_set_value_cansleep(i32 %59, i32 0)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @pm_runtime_disable(i32* %62)
  %64 = load i32, i32* @CS43130_NUM_SUPPLIES, align 4
  %65 = load %struct.cs43130_private*, %struct.cs43130_private** %3, align 8
  %66 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regulator_bulk_disable(i32 %64, i32 %67)
  ret i32 0
}

declare dso_local %struct.cs43130_private* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
