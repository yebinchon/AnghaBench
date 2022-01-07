; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_deactivate_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_deactivate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.Qdisc = type { i32, i32, i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@TCQ_F_BUILTIN = common dso_local global i32 0, align 4
@__QDISC_STATE_DEACTIVATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netdev_queue*, i8*)* @dev_deactivate_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_deactivate_queue(%struct.net_device* %0, %struct.netdev_queue* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.Qdisc*
  store %struct.Qdisc* %11, %struct.Qdisc** %7, align 8
  %12 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %13 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.Qdisc* @rtnl_dereference(i32 %14)
  store %struct.Qdisc* %15, %struct.Qdisc** %8, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %17 = icmp ne %struct.Qdisc* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %3
  %19 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %28 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_bh(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %32 = call i32* @qdisc_lock(%struct.Qdisc* %31)
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %35 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TCQ_F_BUILTIN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %42 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 2
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %30
  %46 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %47 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %50 = call i32 @rcu_assign_pointer(i32 %48, %struct.Qdisc* %49)
  %51 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %52 = call i32 @qdisc_reset(%struct.Qdisc* %51)
  %53 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %54 = call i32* @qdisc_lock(%struct.Qdisc* %53)
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_bh(i32* %60)
  br label %62

62:                                               ; preds = %58, %45
  br label %63

63:                                               ; preds = %62, %3
  ret void
}

declare dso_local %struct.Qdisc* @rtnl_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
