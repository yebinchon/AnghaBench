; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64 }
%struct.wm2200_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wm2200_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.wm2200_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.wm2200_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.wm2200_priv* %5, %struct.wm2200_priv** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.wm2200_priv*, %struct.wm2200_priv** %3, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.wm2200_priv* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.wm2200_priv*, %struct.wm2200_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.wm2200_priv*, %struct.wm2200_priv** %3, align 8
  %24 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpio_set_value_cansleep(i64 %26, i32 0)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.wm2200_priv*, %struct.wm2200_priv** %3, align 8
  %30 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.wm2200_priv*, %struct.wm2200_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpio_set_value_cansleep(i64 %38, i32 0)
  br label %40

40:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local %struct.wm2200_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i64, %struct.wm2200_priv*) #1

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
