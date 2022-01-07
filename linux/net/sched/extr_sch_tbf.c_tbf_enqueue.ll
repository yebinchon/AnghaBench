; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_tbf_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tbf_sched_data = type { i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @tbf_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.tbf_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.tbf_sched_data* %12, %struct.tbf_sched_data** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @qdisc_pkt_len(%struct.sk_buff* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @qdisc_pkt_len(%struct.sk_buff* %15)
  %17 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %8, align 8
  %18 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @skb_is_gso(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @skb_gso_validate_mac_len(%struct.sk_buff* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %36 = call i32 @tbf_segment(%struct.sk_buff* %33, %struct.Qdisc* %34, %struct.sk_buff** %35)
  store i32 %36, i32* %4, align 4
  br label %74

37:                                               ; preds = %25, %21
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %41 = call i32 @qdisc_drop(%struct.sk_buff* %38, %struct.Qdisc* %39, %struct.sk_buff** %40)
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %48 = call i32 @qdisc_enqueue(%struct.sk_buff* %43, i32 %46, %struct.sk_buff** %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @net_xmit_drop_count(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %58 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %64 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %69 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61, %59, %37, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_gso_validate_mac_len(%struct.sk_buff*, i32) #1

declare dso_local i32 @tbf_segment(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_enqueue(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i64 @net_xmit_drop_count(i32) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
