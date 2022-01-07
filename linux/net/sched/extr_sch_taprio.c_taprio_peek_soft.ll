; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek_soft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.taprio_sched = type { i32, %struct.Qdisc**, i32 }
%struct.net_device = type { i32 }
%struct.sched_entry = type { i32 }

@TAPRIO_ALL_GATES_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @taprio_peek_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @taprio_peek_soft(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.taprio_sched*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sched_entry*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %14 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.taprio_sched* %14, %struct.taprio_sched** %4, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %16 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %15)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %19 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.sched_entry* @rcu_dereference(i32 %20)
  store %struct.sched_entry* %21, %struct.sched_entry** %6, align 8
  %22 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %23 = icmp ne %struct.sched_entry* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %26 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @TAPRIO_ALL_GATES_OPEN, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %8, align 4
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %97

36:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %93, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %37
  %44 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %45 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %44, i32 0, i32 1
  %46 = load %struct.Qdisc**, %struct.Qdisc*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %46, i64 %48
  %50 = load %struct.Qdisc*, %struct.Qdisc** %49, align 8
  store %struct.Qdisc* %50, %struct.Qdisc** %10, align 8
  %51 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %52 = icmp ne %struct.Qdisc* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %93

58:                                               ; preds = %43
  %59 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to %struct.sk_buff* (%struct.Qdisc*)**
  %64 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %63, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %66 = call %struct.sk_buff* %64(%struct.Qdisc* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %93

70:                                               ; preds = %58
  %71 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %72 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @TXTIME_ASSIST_IS_ENABLED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %2, align 8
  br label %97

78:                                               ; preds = %70
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %93

91:                                               ; preds = %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %2, align 8
  br label %97

93:                                               ; preds = %90, %69, %57
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %37

96:                                               ; preds = %37
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %97

97:                                               ; preds = %96, %91, %76, %35
  %98 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %98
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sched_entry* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @TXTIME_ASSIST_IS_ENABLED(i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
