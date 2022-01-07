; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sfq_sched_data = type { i64, %struct.sfq_slot*, i32*, %struct.sfq_slot* }
%struct.sfq_slot = type { i64, i64, i64, i64, i32 }

@SFQ_EMPTY_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @sfq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sfq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sfq_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sfq_slot*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.sfq_sched_data* %10, %struct.sfq_sched_data** %4, align 8
  %11 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %12 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %11, i32 0, i32 1
  %13 = load %struct.sfq_slot*, %struct.sfq_slot** %12, align 8
  %14 = icmp eq %struct.sfq_slot* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %107

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %32, %16
  %18 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %18, i32 0, i32 1
  %20 = load %struct.sfq_slot*, %struct.sfq_slot** %19, align 8
  %21 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %24 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %23, i32 0, i32 3
  %25 = load %struct.sfq_slot*, %struct.sfq_slot** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %25, i64 %26
  store %struct.sfq_slot* %27, %struct.sfq_slot** %8, align 8
  %28 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %29 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %34 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %35 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %34, i32 0, i32 1
  store %struct.sfq_slot* %33, %struct.sfq_slot** %35, align 8
  %36 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %37 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %40 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %45 = call %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %5, align 8
  %46 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @sfq_dec(%struct.sfq_sched_data* %46, i64 %47)
  %49 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @qdisc_bstats_update(%struct.Qdisc* %49, %struct.sk_buff* %50)
  %52 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %53 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %57, %struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i64 @qdisc_pkt_len(%struct.sk_buff* %60)
  %62 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %63 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %69 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %43
  %73 = load i32, i32* @SFQ_EMPTY_SLOT, align 4
  %74 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %75 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %78 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %73, i32* %80, align 4
  %81 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %82 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %89 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %88, i32 0, i32 1
  store %struct.sfq_slot* null, %struct.sfq_slot** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %2, align 8
  br label %107

91:                                               ; preds = %72
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %4, align 8
  %94 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %93, i32 0, i32 1
  %95 = load %struct.sfq_slot*, %struct.sfq_slot** %94, align 8
  %96 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  br label %105

97:                                               ; preds = %43
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i64 @qdisc_pkt_len(%struct.sk_buff* %98)
  %100 = call i64 @SFQ_ALLOT_SIZE(i64 %99)
  %101 = load %struct.sfq_slot*, %struct.sfq_slot** %8, align 8
  %102 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %97, %91
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %2, align 8
  br label %107

107:                                              ; preds = %105, %87, %15
  %108 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %108
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot*) #1

declare dso_local i32 @sfq_dec(%struct.sfq_sched_data*, i64) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @SFQ_ALLOT_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
