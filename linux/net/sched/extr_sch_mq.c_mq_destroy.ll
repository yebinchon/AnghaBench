; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.mq_sched = type { i64* }

@TC_MQ_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @mq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mq_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mq_sched*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.mq_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.mq_sched* %9, %struct.mq_sched** %4, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %11 = load i32, i32* @TC_MQ_DESTROY, align 4
  %12 = call i32 @mq_offload(%struct.Qdisc* %10, i32 %11)
  %13 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %14 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %27 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %19
  %35 = phi i1 [ false, %19 ], [ %33, %25 ]
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %38 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @qdisc_put(i64 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %19

48:                                               ; preds = %34
  %49 = load %struct.mq_sched*, %struct.mq_sched** %4, align 8
  %50 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @kfree(i64* %51)
  br label %53

53:                                               ; preds = %48, %17
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @mq_offload(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_put(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
