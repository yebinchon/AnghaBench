; ModuleID = '/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_link_scope_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/l3mdev/extr_l3mdev.c_l3mdev_link_scope_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.flowi6 = type { i64 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @l3mdev_link_scope_lookup(%struct.net* %0, %struct.flowi6* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.flowi6*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.flowi6* %1, %struct.flowi6** %4, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %5, align 8
  %7 = call i32 (...) @rcu_read_lock_held()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %13 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %19 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %17, i64 %20)
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i64 @netif_is_l3_slave(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %29)
  store %struct.net_device* %30, %struct.net_device** %6, align 8
  br label %31

31:                                               ; preds = %28, %24, %16
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i64 @netif_is_l3_master(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)*, %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)** %42, align 8
  %44 = icmp ne %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)*, %struct.dst_entry* (%struct.net_device*, %struct.flowi6*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %53 = call %struct.dst_entry* %50(%struct.net_device* %51, %struct.flowi6* %52)
  store %struct.dst_entry* %53, %struct.dst_entry** %5, align 8
  br label %54

54:                                               ; preds = %45, %38, %34, %31
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %56
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i64) #1

declare dso_local i64 @netif_is_l3_slave(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
