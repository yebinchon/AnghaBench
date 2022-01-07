; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64 }
%struct.wm5100_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wm5100_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.wm5100_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.wm5100_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.wm5100_priv* %5, %struct.wm5100_priv** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.wm5100_priv* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = call i32 @wm5100_free_gpio(%struct.i2c_client* %17)
  %19 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @gpio_set_value_cansleep(i64 %28, i32 0)
  %30 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpio_free(i64 %33)
  br label %35

35:                                               ; preds = %24, %16
  %36 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %37 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %43 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gpio_set_value_cansleep(i64 %45, i32 0)
  %47 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gpio_free(i64 %50)
  br label %52

52:                                               ; preds = %41, %35
  ret i32 0
}

declare dso_local %struct.wm5100_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i64, %struct.wm5100_priv*) #1

declare dso_local i32 @wm5100_free_gpio(%struct.i2c_client*) #1

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
