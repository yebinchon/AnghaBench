; ModuleID = '/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_fib_table_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_fib_table_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l3mdev_fib_table_rcu(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @netif_is_l3_master(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.net_device*)**
  %20 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %19, align 8
  %21 = icmp ne i32 (%struct.net_device*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.net_device*)**
  %28 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 %28(%struct.net_device* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22, %14
  br label %61

32:                                               ; preds = %10
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @netif_is_l3_slave(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %37, %struct.net_device** %5, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %38)
  store %struct.net_device* %39, %struct.net_device** %6, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.net_device*)**
  %48 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %47, align 8
  %49 = icmp ne i32 (%struct.net_device*)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.net_device*)**
  %56 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 %56(%struct.net_device* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %42, %36
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local i64 @netif_is_l3_slave(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
