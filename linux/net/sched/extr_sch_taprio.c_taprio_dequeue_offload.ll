; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dequeue_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dequeue_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }
%struct.taprio_sched = type { %struct.Qdisc** }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @taprio_dequeue_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @taprio_dequeue_offload(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.taprio_sched*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.taprio_sched* %10, %struct.taprio_sched** %4, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %11)
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %21 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %20, i32 0, i32 0
  %22 = load %struct.Qdisc**, %struct.Qdisc*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %22, i64 %24
  %26 = load %struct.Qdisc*, %struct.Qdisc** %25, align 8
  store %struct.Qdisc* %26, %struct.Qdisc** %8, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %28 = icmp ne %struct.Qdisc* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %63

34:                                               ; preds = %19
  %35 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to %struct.sk_buff* (%struct.Qdisc*)**
  %40 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %39, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %42 = call %struct.sk_buff* %40(%struct.Qdisc* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %63

50:                                               ; preds = %34
  %51 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @qdisc_bstats_update(%struct.Qdisc* %51, %struct.sk_buff* %52)
  %54 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %54, %struct.sk_buff* %55)
  %57 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %2, align 8
  br label %67

63:                                               ; preds = %49, %33
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %13

66:                                               ; preds = %13
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %68
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
