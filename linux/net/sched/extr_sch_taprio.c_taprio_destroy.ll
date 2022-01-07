; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.taprio_sched = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@taprio_list_lock = common dso_local global i32 0, align 4
@taprio_free_sched_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @taprio_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taprio_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.taprio_sched*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.taprio_sched* %7, %struct.taprio_sched** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = call i32 @spin_lock(i32* @taprio_list_lock)
  %11 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %12 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %11, i32 0, i32 4
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @spin_unlock(i32* @taprio_list_lock)
  %15 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %16 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %15, i32 0, i32 3
  %17 = call i32 @hrtimer_cancel(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %20 = call i32 @taprio_disable_offload(%struct.net_device* %18, %struct.taprio_sched* %19, i32* null)
  %21 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %22 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %34 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %32, %26
  %42 = phi i1 [ false, %26 ], [ %40, %32 ]
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %45 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @qdisc_put(i64 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %26

55:                                               ; preds = %41
  %56 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %57 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = call i32 @kfree(i64* %58)
  br label %60

60:                                               ; preds = %55, %1
  %61 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %62 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %61, i32 0, i32 2
  store i64* null, i64** %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @netdev_set_num_tc(%struct.net_device* %63, i32 0)
  %65 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %66 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %71 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @taprio_free_sched_cb, align 4
  %75 = call i32 @call_rcu(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %60
  %77 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %78 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.taprio_sched*, %struct.taprio_sched** %3, align 8
  %83 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* @taprio_free_sched_cb, align 4
  %87 = call i32 @call_rcu(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  ret void
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @taprio_disable_offload(%struct.net_device*, %struct.taprio_sched*, i32*) #1

declare dso_local i32 @qdisc_put(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
