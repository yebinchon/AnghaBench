; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_peek_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.taprio_sched = type { %struct.Qdisc** }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @taprio_peek_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @taprio_peek_offload(%struct.Qdisc* %0) #0 {
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

13:                                               ; preds = %48, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %51

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
  br label %48

34:                                               ; preds = %19
  %35 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to %struct.sk_buff* (%struct.Qdisc*)**
  %40 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %39, align 8
  %41 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %42 = call %struct.sk_buff* %40(%struct.Qdisc* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %48

46:                                               ; preds = %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %2, align 8
  br label %52

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %13

51:                                               ; preds = %13
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %53
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
