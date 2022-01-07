; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.plug_sched_data = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @plug_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plug_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.plug_sched_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %10 = call %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.plug_sched_data* %10, %struct.plug_sched_data** %8, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %20 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %33 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %39 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %37, %struct.Qdisc* %38)
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %44 = call i32 @qdisc_drop(%struct.sk_buff* %41, %struct.Qdisc* %42, %struct.sk_buff** %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
