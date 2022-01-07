; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@__NET_XMIT_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @multiq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.Qdisc* @multiq_classify(%struct.sk_buff* %10, %struct.Qdisc* %11, i32* %9)
  store %struct.Qdisc* %12, %struct.Qdisc** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %16 = call i32 @qdisc_enqueue(%struct.sk_buff* %13, %struct.Qdisc* %14, %struct.sk_buff** %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @net_xmit_drop_count(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %33 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.Qdisc* @multiq_classify(%struct.sk_buff*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
