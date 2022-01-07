; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.hw20k2 = type { i32 }

@I2C_IF_STATUS = common dso_local global i32 0, align 4
@I2C_STATUS_BC = common dso_local global i32 0, align 4
@I2C_IF_WDATA = common dso_local global i32 0, align 4
@I2C_IF_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8**)* @hw20k2_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_read(%struct.hw* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.hw20k2*, align 8
  %9 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.hw*, %struct.hw** %5, align 8
  %11 = bitcast %struct.hw* %10 to %struct.hw20k2*
  store %struct.hw20k2* %11, %struct.hw20k2** %8, align 8
  %12 = load %struct.hw*, %struct.hw** %5, align 8
  %13 = load i32, i32* @I2C_IF_STATUS, align 4
  %14 = call i8* @hw_read_20kx(%struct.hw* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @I2C_STATUS_BC, align 4
  %17 = load %struct.hw20k2*, %struct.hw20k2** %8, align 8
  %18 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 4, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.hw20k2*, %struct.hw20k2** %8, align 8
  %24 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ 0, %21 ], [ %25, %22 ]
  %28 = call i32 @set_field(i32* %9, i32 %16, i32 %27)
  %29 = load %struct.hw*, %struct.hw** %5, align 8
  %30 = load i32, i32* @I2C_IF_STATUS, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @hw_write_20kx(%struct.hw* %29, i32 %30, i32 %31)
  %33 = load %struct.hw*, %struct.hw** %5, align 8
  %34 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %59

37:                                               ; preds = %26
  %38 = load %struct.hw*, %struct.hw** %5, align 8
  %39 = load i32, i32* @I2C_IF_WDATA, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @hw_write_20kx(%struct.hw* %38, i32 %39, i32 %40)
  %42 = load %struct.hw*, %struct.hw** %5, align 8
  %43 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.hw*, %struct.hw** %5, align 8
  %48 = load i32, i32* @I2C_IF_RDATA, align 4
  %49 = call i32 @hw_write_20kx(%struct.hw* %47, i32 %48, i32 0)
  %50 = load %struct.hw*, %struct.hw** %5, align 8
  %51 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %59

54:                                               ; preds = %46
  %55 = load %struct.hw*, %struct.hw** %5, align 8
  %56 = load i32, i32* @I2C_IF_RDATA, align 4
  %57 = call i8* @hw_read_20kx(%struct.hw* %55, i32 %56)
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %53, %45, %36
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i8* @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw20k2_i2c_wait_data_ready(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
