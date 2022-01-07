; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_sama5d2_mck_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_sama5d2_mck_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_i2s_dev = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"muxclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to get the I2S clock control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_i2s_dev*, %struct.device_node*)* @atmel_i2s_sama5d2_mck_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_sama5d2_mck_init(%struct.atmel_i2s_dev* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_i2s_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.atmel_i2s_dev* %0, %struct.atmel_i2s_dev** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.clk* @devm_clk_get(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %17, %struct.clk** %6, align 8
  %18 = load %struct.clk*, %struct.clk** %6, align 8
  %19 = call i64 @IS_ERR(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.clk* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %13
  %38 = load %struct.clk*, %struct.clk** %6, align 8
  %39 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_set_parent(%struct.clk* %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %31, %28, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
