; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qfq_sched = type { i32, i64, %struct.qfq_aggregate* }
%struct.qfq_aggregate = type { i32, i32, i32, i64, i32 }
%struct.qfq_class = type { i32 }

@requeue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"qfq dequeue: len %u F %lld now %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @qfq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qfq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_aggregate*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.qfq_sched* %10, %struct.qfq_sched** %4, align 8
  %11 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %12 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %11, i32 0, i32 2
  %13 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %12, align 8
  store %struct.qfq_aggregate* %13, %struct.qfq_aggregate** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %15 = icmp eq %struct.qfq_aggregate* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %130

17:                                               ; preds = %1
  %18 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %19 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %18, i32 0, i32 4
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %24 = call %struct.sk_buff* @qfq_peek_skb(%struct.qfq_aggregate* %23, %struct.qfq_class** %6, i32* %8)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %30 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %28, %25
  %35 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %36 = call i32 @charge_actual_service(%struct.qfq_aggregate* %35)
  %37 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %38 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %41 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %43 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %45 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %44, i32 0, i32 4
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %34
  %49 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %50 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %51 = load i32, i32* @requeue, align 4
  %52 = call i32 @qfq_update_agg_ts(%struct.qfq_sched* %49, %struct.qfq_aggregate* %50, i32 %51)
  %53 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %54 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %55 = call i32 @qfq_schedule_agg(%struct.qfq_sched* %53, %struct.qfq_aggregate* %54)
  br label %66

56:                                               ; preds = %34
  %57 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %64 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %63, i32 0, i32 2
  store %struct.qfq_aggregate* null, %struct.qfq_aggregate** %64, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %130

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %68 = call %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched* %67)
  %69 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %70 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %69, i32 0, i32 2
  store %struct.qfq_aggregate* %68, %struct.qfq_aggregate** %70, align 8
  store %struct.qfq_aggregate* %68, %struct.qfq_aggregate** %5, align 8
  %71 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %72 = call %struct.sk_buff* @qfq_peek_skb(%struct.qfq_aggregate* %71, %struct.qfq_class** %6, i32* %8)
  store %struct.sk_buff* %72, %struct.sk_buff** %7, align 8
  br label %73

73:                                               ; preds = %66, %28
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %130

77:                                               ; preds = %73
  %78 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %78, %struct.sk_buff* %79)
  %81 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @qdisc_bstats_update(%struct.Qdisc* %86, %struct.sk_buff* %87)
  %89 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %90 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @agg_dequeue(%struct.qfq_aggregate* %89, %struct.qfq_class* %90, i32 %91)
  %93 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %94 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ult i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %77
  %102 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %103 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %110

104:                                              ; preds = %77
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %107 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %113 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %118 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %123 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %126 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %121, i64 %124, i64 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %129, %struct.sk_buff** %2, align 8
  br label %130

130:                                              ; preds = %110, %76, %62, %16
  %131 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %131
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.sk_buff* @qfq_peek_skb(%struct.qfq_aggregate*, %struct.qfq_class**, i32*) #1

declare dso_local i32 @charge_actual_service(%struct.qfq_aggregate*) #1

declare dso_local i32 @qfq_update_agg_ts(%struct.qfq_sched*, %struct.qfq_aggregate*, i32) #1

declare dso_local i32 @qfq_schedule_agg(%struct.qfq_sched*, %struct.qfq_aggregate*) #1

declare dso_local %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @agg_dequeue(%struct.qfq_aggregate*, %struct.qfq_class*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
