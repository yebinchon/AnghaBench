; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_gpio_pin_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_gpio_pin_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiochip_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"line<%d>\00", align 1
@GPIOHANDLE_REQUEST_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@GPIOHANDLE_REQUEST_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIOHANDLE_REQUEST_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpio_pin_tests(%struct.gpiochip_info* %0, i32 %1) #0 {
  %3 = alloca %struct.gpiochip_info*, align 8
  %4 = alloca i32, align 4
  store %struct.gpiochip_info* %0, %struct.gpiochip_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.gpiochip_info*, %struct.gpiochip_info** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %10 = call i32 @gpio_pin_test(%struct.gpiochip_info* %7, i32 %8, i32 %9, i32 0)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.gpiochip_info*, %struct.gpiochip_info** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %15 = call i32 @gpio_pin_test(%struct.gpiochip_info* %12, i32 %13, i32 %14, i32 1)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.gpiochip_info*, %struct.gpiochip_info** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %20 = load i32, i32* @GPIOHANDLE_REQUEST_ACTIVE_LOW, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @gpio_pin_test(%struct.gpiochip_info* %17, i32 %18, i32 %21, i32 0)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.gpiochip_info*, %struct.gpiochip_info** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %27 = load i32, i32* @GPIOHANDLE_REQUEST_ACTIVE_LOW, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @gpio_pin_test(%struct.gpiochip_info* %24, i32 %25, i32 %28, i32 1)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.gpiochip_info*, %struct.gpiochip_info** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GPIOHANDLE_REQUEST_INPUT, align 4
  %34 = call i32 @gpio_pin_test(%struct.gpiochip_info* %31, i32 %32, i32 %33, i32 0)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gpio_pin_test(%struct.gpiochip_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
