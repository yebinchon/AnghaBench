; ModuleID = '/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_devm_alloc_etherdev_mqs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_devm_alloc_etherdev_mqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.device = type { i32 }

@devm_free_netdev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @devm_alloc_etherdev_mqs(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device**, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @devm_free_netdev, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.net_device** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.net_device** %14, %struct.net_device*** %10, align 8
  %15 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %16 = icmp ne %struct.net_device** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %35

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.net_device* @alloc_etherdev_mqs(i32 %19, i32 %20, i32 %21)
  store %struct.net_device* %22, %struct.net_device** %11, align 8
  %23 = load %struct.net_device*, %struct.net_device** %11, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %27 = call i32 @devres_free(%struct.net_device** %26)
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.net_device*, %struct.net_device** %11, align 8
  %30 = load %struct.net_device**, %struct.net_device*** %10, align 8
  store %struct.net_device* %29, %struct.net_device** %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.net_device** %32)
  %34 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %34, %struct.net_device** %5, align 8
  br label %35

35:                                               ; preds = %28, %25, %17
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %36
}

declare dso_local %struct.net_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @devres_free(%struct.net_device**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.net_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
