; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.hw20k2 = type { i32, i32, i32 }

@I2C_ADDRESS_SLAD = common dso_local global i32 0, align 4
@I2C_IF_ADDRESS = common dso_local global i32 0, align 4
@I2C_IF_STATUS = common dso_local global i32 0, align 4
@I2C_STATUS_DCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i32, i32)* @hw20k2_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_init(%struct.hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hw20k2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hw*, %struct.hw** %6, align 8
  %15 = bitcast %struct.hw* %14 to %struct.hw20k2*
  store %struct.hw20k2* %15, %struct.hw20k2** %10, align 8
  %16 = load %struct.hw*, %struct.hw** %6, align 8
  %17 = call i32 @hw20k2_i2c_unlock_full_access(%struct.hw* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.hw20k2*, %struct.hw20k2** %10, align 8
  %25 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.hw20k2*, %struct.hw20k2** %10, align 8
  %28 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hw20k2*, %struct.hw20k2** %10, align 8
  %31 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %13, align 4
  %32 = load i32, i32* @I2C_ADDRESS_SLAD, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @set_field(i32* %13, i32 %32, i32 %33)
  %35 = load %struct.hw*, %struct.hw** %6, align 8
  %36 = load i32, i32* @I2C_IF_ADDRESS, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %35, i32 %36, i32 %37)
  %39 = load %struct.hw*, %struct.hw** %6, align 8
  %40 = load i32, i32* @I2C_IF_STATUS, align 4
  %41 = call i32 @hw_read_20kx(%struct.hw* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @I2C_STATUS_DCM, align 4
  %43 = call i32 @set_field(i32* %12, i32 %42, i32 1)
  %44 = load %struct.hw*, %struct.hw** %6, align 8
  %45 = load i32, i32* @I2C_IF_STATUS, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @hw_write_20kx(%struct.hw* %44, i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %22, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @hw20k2_i2c_unlock_full_access(%struct.hw*) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
