; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.failover = type { i32, i32 }
%struct.net_device = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failover master:%s unregistered\0A\00", align 1
@IFF_FAILOVER = common dso_local global i32 0, align 4
@failover_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @failover_unregister(%struct.failover* %0) #0 {
  %2 = alloca %struct.failover*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.failover* %0, %struct.failover** %2, align 8
  %4 = load %struct.failover*, %struct.failover** %2, align 8
  %5 = getelementptr inbounds %struct.failover, %struct.failover* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.net_device* @rcu_dereference(i32 %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netdev_info(%struct.net_device* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @IFF_FAILOVER, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @dev_put(%struct.net_device* %19)
  %21 = call i32 @spin_lock(i32* @failover_lock)
  %22 = load %struct.failover*, %struct.failover** %2, align 8
  %23 = getelementptr inbounds %struct.failover, %struct.failover* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = call i32 @spin_unlock(i32* @failover_lock)
  %26 = load %struct.failover*, %struct.failover** %2, align 8
  %27 = call i32 @kfree(%struct.failover* %26)
  ret void
}

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.failover*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
