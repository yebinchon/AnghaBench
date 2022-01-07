; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_wait_allrefs.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_wait_allrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i32 0, align 4
@__LINK_STATE_LINKWATCH_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"unregister_netdevice: waiting for %s to become free. Usage count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdev_wait_allrefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_wait_allrefs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @linkwatch_forget_dev(%struct.net_device* %6)
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %4, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netdev_refcnt_read(%struct.net_device* %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %11
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = call i64 @time_after(i64 %15, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = call i32 (...) @rtnl_lock()
  %25 = load i32, i32* @NETDEV_UNREGISTER, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @call_netdevice_notifiers(i32 %25, %struct.net_device* %26)
  %28 = call i32 (...) @__rtnl_unlock()
  %29 = call i32 (...) @rcu_barrier()
  %30 = call i32 (...) @rtnl_lock()
  %31 = load i32, i32* @__LINK_STATE_LINKWATCH_PENDING, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = call i32 (...) @linkwatch_run_queue()
  br label %38

38:                                               ; preds = %36, %23
  %39 = call i32 (...) @__rtnl_unlock()
  %40 = load i64, i64* @jiffies, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %38, %14
  %42 = call i32 @msleep(i32 250)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @netdev_refcnt_read(%struct.net_device* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 10, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %49, %52
  %54 = call i64 @time_after(i64 %48, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pr_emerg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i64, i64* @jiffies, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %47, %41
  br label %11

64:                                               ; preds = %11
  ret void
}

declare dso_local i32 @linkwatch_forget_dev(%struct.net_device*) #1

declare dso_local i32 @netdev_refcnt_read(%struct.net_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @__rtnl_unlock(...) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @linkwatch_run_queue(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_emerg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
