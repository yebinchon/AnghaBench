; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_i2s_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_i2s_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xtfpga_i2s = type { i64 }

@XTFPGA_I2S_CONFIG = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_MASK = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_STATUS = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xtfpga_i2s_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtfpga_i2s_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xtfpga_i2s*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.xtfpga_i2s* @dev_get_drvdata(i32* %5)
  store %struct.xtfpga_i2s* %6, %struct.xtfpga_i2s** %3, align 8
  %7 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %3, align 8
  %8 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %3, align 8
  %13 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @IS_ERR(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %3, align 8
  %19 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @XTFPGA_I2S_CONFIG, align 4
  %22 = call i32 @regmap_write(i64 %20, i32 %21, i32 0)
  %23 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %3, align 8
  %24 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @XTFPGA_I2S_INT_MASK, align 4
  %27 = call i32 @regmap_write(i64 %25, i32 %26, i32 0)
  %28 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %3, align 8
  %29 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @XTFPGA_I2S_INT_STATUS, align 4
  %32 = load i32, i32* @XTFPGA_I2S_INT_VALID, align 4
  %33 = call i32 @regmap_write(i64 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %17, %11, %1
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_disable(i32* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_status_suspended(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @xtfpga_i2s_runtime_suspend(i32* %44)
  br label %46

46:                                               ; preds = %42, %34
  ret i32 0
}

declare dso_local %struct.xtfpga_i2s* @dev_get_drvdata(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @xtfpga_i2s_runtime_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
