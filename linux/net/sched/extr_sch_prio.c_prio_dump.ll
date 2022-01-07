; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.prio_sched_data = type { i32, i32 }
%struct.tc_prio_qopt = type { i32, i32 }

@TC_PRIO_MAX = common dso_local global i64 0, align 8
@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @prio_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.prio_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_prio_qopt, align 4
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.prio_sched_data* %11, %struct.prio_sched_data** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i8* @skb_tail_pointer(%struct.sk_buff* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %15 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %8, i32 0, i32 0
  %19 = load %struct.prio_sched_data*, %struct.prio_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @TC_PRIO_MAX, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @memcpy(i32* %18, i32 %21, i64 %23)
  %25 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %26 = call i32 @prio_dump_offload(%struct.Qdisc* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @TCA_OPTIONS, align 4
  %33 = call i64 @nla_put(%struct.sk_buff* %31, i32 %32, i32 8, %struct.tc_prio_qopt* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %35, %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @nlmsg_trim(%struct.sk_buff* %41, i8* %42)
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @prio_dump_offload(%struct.Qdisc*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_prio_qopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
