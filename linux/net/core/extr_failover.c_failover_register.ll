; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.failover = type { i32, i32, i32 }
%struct.net_device = type { i64, i32, i32 }
%struct.failover_ops = type { i64, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFF_FAILOVER = common dso_local global i32 0, align 4
@failover_lock = common dso_local global i32 0, align 4
@failover_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failover master:%s registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.failover* @failover_register(%struct.net_device* %0, %struct.failover_ops* %1) #0 {
  %3 = alloca %struct.failover*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.failover_ops*, align 8
  %6 = alloca %struct.failover*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.failover_ops* %1, %struct.failover_ops** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ARPHRD_ETHER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.failover* @ERR_PTR(i32 %14)
  store %struct.failover* %15, %struct.failover** %3, align 8
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.failover* @kzalloc(i32 12, i32 %17)
  store %struct.failover* %18, %struct.failover** %6, align 8
  %19 = load %struct.failover*, %struct.failover** %6, align 8
  %20 = icmp ne %struct.failover* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.failover* @ERR_PTR(i32 %23)
  store %struct.failover* %24, %struct.failover** %3, align 8
  br label %57

25:                                               ; preds = %16
  %26 = load %struct.failover*, %struct.failover** %6, align 8
  %27 = getelementptr inbounds %struct.failover, %struct.failover* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %30 = bitcast %struct.failover_ops* %29 to %struct.net_device*
  %31 = call i32 @rcu_assign_pointer(i32 %28, %struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @dev_hold(%struct.net_device* %32)
  %34 = load i32, i32* @IFF_FAILOVER, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.failover*, %struct.failover** %6, align 8
  %40 = getelementptr inbounds %struct.failover, %struct.failover* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @rcu_assign_pointer(i32 %41, %struct.net_device* %42)
  %44 = call i32 @spin_lock(i32* @failover_lock)
  %45 = load %struct.failover*, %struct.failover** %6, align 8
  %46 = getelementptr inbounds %struct.failover, %struct.failover* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %46, i32* @failover_list)
  %48 = call i32 @spin_unlock(i32* @failover_lock)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @failover_existing_slave_register(%struct.net_device* %54)
  %56 = load %struct.failover*, %struct.failover** %6, align 8
  store %struct.failover* %56, %struct.failover** %3, align 8
  br label %57

57:                                               ; preds = %25, %21, %12
  %58 = load %struct.failover*, %struct.failover** %3, align 8
  ret %struct.failover* %58
}

declare dso_local %struct.failover* @ERR_PTR(i32) #1

declare dso_local %struct.failover* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @failover_existing_slave_register(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
