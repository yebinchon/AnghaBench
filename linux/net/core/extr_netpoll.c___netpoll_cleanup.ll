; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c___netpoll_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c___netpoll_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.TYPE_2__*)* }
%struct.netpoll_info = type { i32, i32 }

@netpoll_srcu = common dso_local global i32 0, align 4
@rcu_cleanup_netpoll_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__netpoll_cleanup(%struct.netpoll* %0) #0 {
  %2 = alloca %struct.netpoll*, align 8
  %3 = alloca %struct.netpoll_info*, align 8
  %4 = alloca %struct.net_device_ops*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %2, align 8
  %5 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %6 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.netpoll_info* @rtnl_dereference(i32 %9)
  store %struct.netpoll_info* %10, %struct.netpoll_info** %3, align 8
  %11 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %12 = icmp ne %struct.netpoll_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = call i32 @synchronize_srcu(i32* @netpoll_srcu)
  %16 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %17 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %16, i32 0, i32 1
  %18 = call i64 @refcount_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %22 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.net_device_ops*, %struct.net_device_ops** %24, align 8
  store %struct.net_device_ops* %25, %struct.net_device_ops** %4, align 8
  %26 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_2__*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %32 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %32, align 8
  %34 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %35 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_2__* %36)
  br label %38

38:                                               ; preds = %30, %20
  %39 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %40 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @RCU_INIT_POINTER(i32 %43, i32* null)
  %45 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %46 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %45, i32 0, i32 0
  %47 = load i32, i32* @rcu_cleanup_netpoll_info, align 4
  %48 = call i32 @call_rcu(i32* %46, i32 %47)
  br label %56

49:                                               ; preds = %14
  %50 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %51 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @RCU_INIT_POINTER(i32 %54, i32* null)
  br label %56

56:                                               ; preds = %13, %49, %38
  ret void
}

declare dso_local %struct.netpoll_info* @rtnl_dereference(i32) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
