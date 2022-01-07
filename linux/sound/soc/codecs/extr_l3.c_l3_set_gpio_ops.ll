; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_l3_set_gpio_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_l3_set_gpio_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.l3_pins = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"l3_data\00", align 1
@l3_set_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"l3_clk\00", align 1
@l3_set_clk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"l3_mode\00", align 1
@l3_set_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l3_set_gpio_ops(%struct.device* %0, %struct.l3_pins* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.l3_pins*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.l3_pins* %1, %struct.l3_pins** %5, align 8
  %7 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %8 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %17 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %20 = call i32 @devm_gpio_request_one(%struct.device* %15, i32 %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %14
  %26 = load i32, i32* @l3_set_data, align 4
  %27 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %28 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %31 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %34 = call i32 @devm_gpio_request_one(%struct.device* %29, i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %25
  %40 = load i32, i32* @l3_set_clk, align 4
  %41 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %42 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %45 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %48 = call i32 @devm_gpio_request_one(%struct.device* %43, i32 %46, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %39
  %54 = load i32, i32* @l3_set_mode, align 4
  %55 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %56 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %51, %37, %23, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
