; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gred_sched = type { i64, i32, %struct.gred_sched_data** }
%struct.gred_sched_data = type { i32, i64 }

@.str = private unnamed_addr constant [69 x i8] c"GRED: Unable to relocate VQ 0x%x after dequeue, screwing up backlog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @gred_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gred_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.gred_sched*, align 8
  %6 = alloca %struct.gred_sched_data*, align 8
  %7 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.gred_sched* %9, %struct.gred_sched** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.sk_buff* @qdisc_dequeue_head(%struct.Qdisc* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i64 @tc_index_to_dp(%struct.sk_buff* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %19 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %24 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %23, i32 0, i32 2
  %25 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %25, i64 %26
  %28 = load %struct.gred_sched_data*, %struct.gred_sched_data** %27, align 8
  store %struct.gred_sched_data* %28, %struct.gred_sched_data** %6, align 8
  %29 = icmp eq %struct.gred_sched_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22, %14
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 @tc_index_to_dp(%struct.sk_buff* %31)
  %33 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %66

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @qdisc_pkt_len(%struct.sk_buff* %35)
  %37 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %42 = call i64 @gred_wred_mode(%struct.gred_sched* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %46 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %52 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %51, i32 0, i32 1
  %53 = call i32 @red_start_of_idle_period(i32* %52)
  br label %54

54:                                               ; preds = %50, %44
  br label %65

55:                                               ; preds = %34
  %56 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %57 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %62 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %61, i32 0, i32 0
  %63 = call i32 @red_start_of_idle_period(i32* %62)
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %2, align 8
  br label %69

68:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %69

69:                                               ; preds = %68, %66
  %70 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %70
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_head(%struct.Qdisc*) #1

declare dso_local i64 @tc_index_to_dp(%struct.sk_buff*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i64) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @gred_wred_mode(%struct.gred_sched*) #1

declare dso_local i32 @red_start_of_idle_period(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
