; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @prio_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @qdisc_pkt_len(%struct.sk_buff* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = call %struct.Qdisc* @prio_classify(%struct.sk_buff* %13, %struct.Qdisc* %14, i32* %10)
  store %struct.Qdisc* %15, %struct.Qdisc** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %18 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %19 = call i32 @qdisc_enqueue(%struct.sk_buff* %16, %struct.Qdisc* %17, %struct.sk_buff** %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @net_xmit_drop_count(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %42 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local %struct.Qdisc* @prio_classify(%struct.sk_buff*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
