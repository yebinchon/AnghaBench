; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hfsc_sched = type { i32 }
%struct.tc_hfsc_qopt = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @hfsc_dump_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_qdisc(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hfsc_sched*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_hfsc_qopt, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.hfsc_sched* %10, %struct.hfsc_sched** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i8* @skb_tail_pointer(%struct.sk_buff* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %14 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tc_hfsc_qopt, %struct.tc_hfsc_qopt* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @TCA_OPTIONS, align 4
  %19 = call i64 @nla_put(%struct.sk_buff* %17, i32 %18, i32 4, %struct.tc_hfsc_qopt* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @nlmsg_trim(%struct.sk_buff* %27, i8* %28)
  store i32 -1, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_hfsc_qopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
