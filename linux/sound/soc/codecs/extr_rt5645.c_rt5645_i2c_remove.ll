; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64 }
%struct.rt5645_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rt5645_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rt5645_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.rt5645_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.rt5645_priv* %5, %struct.rt5645_priv** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.rt5645_priv* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %17, i32 0, i32 3
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %20, i32 0, i32 2
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.rt5645_priv*, %struct.rt5645_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_bulk_disable(i32 %29, i32 %32)
  ret i32 0
}

declare dso_local %struct.rt5645_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i64, %struct.rt5645_priv*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
