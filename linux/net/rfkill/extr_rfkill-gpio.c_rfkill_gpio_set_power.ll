; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_rfkill-gpio.c_rfkill_gpio_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill_gpio_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @rfkill_gpio_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_gpio_set_power(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfkill_gpio_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rfkill_gpio_data*
  store %struct.rfkill_gpio_data* %7, %struct.rfkill_gpio_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %12 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IS_ERR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %18 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %23 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_enable(i32 %24)
  br label %26

26:                                               ; preds = %21, %16, %10, %2
  %27 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %28 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 %33)
  %35 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %36 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @gpiod_set_value_cansleep(i32 %37, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %26
  %46 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %47 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_ERR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %53 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %58 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_disable(i32 %59)
  br label %61

61:                                               ; preds = %56, %51, %45, %26
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.rfkill_gpio_data*, %struct.rfkill_gpio_data** %5, align 8
  %67 = getelementptr inbounds %struct.rfkill_gpio_data, %struct.rfkill_gpio_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
