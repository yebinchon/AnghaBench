; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_dequeue_timesortedlist.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_dequeue_timesortedlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.etf_sched_data = type { i32, i64, i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @etf_dequeue_timesortedlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @etf_dequeue_timesortedlist(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.etf_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.etf_sched_data* %9, %struct.etf_sched_data** %4, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.sk_buff* @etf_peek_timesortedlist(%struct.Qdisc* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.etf_sched_data*, %struct.etf_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %16, i32 0, i32 2
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  store i32 %19, i32* %6, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ktime_before(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @timesortedlist_drop(%struct.Qdisc* %27, %struct.sk_buff* %28, i32 %29)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %61

31:                                               ; preds = %15
  %32 = load %struct.etf_sched_data*, %struct.etf_sched_data** %4, align 8
  %33 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @timesortedlist_remove(%struct.Qdisc* %37, %struct.sk_buff* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %61

43:                                               ; preds = %31
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.etf_sched_data*, %struct.etf_sched_data** %4, align 8
  %48 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ktime_sub_ns(i32 %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @ktime_after(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @timesortedlist_remove(%struct.Qdisc* %56, %struct.sk_buff* %57)
  br label %60

59:                                               ; preds = %43
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60, %36, %26
  %62 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %63 = call i32 @reset_watchdog(%struct.Qdisc* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %2, align 8
  br label %65

65:                                               ; preds = %61, %14
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @etf_peek_timesortedlist(%struct.Qdisc*) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @timesortedlist_drop(%struct.Qdisc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @timesortedlist_remove(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @reset_watchdog(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
