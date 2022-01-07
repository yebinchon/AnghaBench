; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.Qdisc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fq_sched_data = type { i64, i32, %struct.fq_flow, i32, i64, i32, i64, i32, i32 }
%struct.fq_flow = type { i64, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SK_PACING_FQ = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @fq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.fq_sched_data*, align 8
  %9 = alloca %struct.fq_flow*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.fq_sched_data* %12, %struct.fq_sched_data** %8, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %28 = call i32 @qdisc_drop(%struct.sk_buff* %25, %struct.Qdisc* %26, %struct.sk_buff** %27)
  store i32 %28, i32* %4, align 4
  br label %150

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %32 = call %struct.fq_flow* @fq_classify(%struct.sk_buff* %30, %struct.fq_sched_data* %31)
  store %struct.fq_flow* %32, %struct.fq_flow** %9, align 8
  %33 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %34 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %37 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %42 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %43 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %42, i32 0, i32 2
  %44 = icmp ne %struct.fq_flow* %41, %43
  br label %45

45:                                               ; preds = %40, %29
  %46 = phi i1 [ false, %29 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %52 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %58 = call i32 @qdisc_drop(%struct.sk_buff* %55, %struct.Qdisc* %56, %struct.sk_buff** %57)
  store i32 %58, i32* %4, align 4
  br label %150

59:                                               ; preds = %45
  %60 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %61 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %64, %struct.sk_buff* %65)
  %67 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %68 = call i64 @fq_flow_is_detached(%struct.fq_flow* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load %struct.sock*, %struct.sock** %72, align 8
  store %struct.sock* %73, %struct.sock** %10, align 8
  %74 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %75 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %74, i32 0, i32 7
  %76 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %77 = call i32 @fq_flow_add_tail(i32* %75, %struct.fq_flow* %76)
  %78 = load i32, i32* @jiffies, align 4
  %79 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %80 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %83 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i64 @time_after(i32 %78, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %70
  %89 = load i32, i32* @u32, align 4
  %90 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %91 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %94 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @max_t(i32 %89, i32 %92, i32 %95)
  %97 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %98 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %88, %70
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = icmp ne %struct.sock* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %104 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %10, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = call i64 @smp_load_acquire(i32* %109)
  %111 = load i64, i64* @SK_PACING_FQ, align 8
  %112 = icmp ne i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load %struct.sock*, %struct.sock** %10, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 0
  %119 = load i64, i64* @SK_PACING_FQ, align 8
  %120 = call i32 @smp_store_release(i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %107
  br label %122

122:                                              ; preds = %121, %102, %99
  %123 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %124 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %59
  %128 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @flow_queue_add(%struct.fq_flow* %128, %struct.sk_buff* %129)
  %131 = load %struct.fq_flow*, %struct.fq_flow** %9, align 8
  %132 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %133 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %132, i32 0, i32 2
  %134 = icmp eq %struct.fq_flow* %131, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct.fq_sched_data*, %struct.fq_sched_data** %8, align 8
  %140 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %138, %127
  %144 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %145 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %143, %50, %24
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local %struct.fq_flow* @fq_classify(%struct.sk_buff*, %struct.fq_sched_data*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @fq_flow_is_detached(%struct.fq_flow*) #1

declare dso_local i32 @fq_flow_add_tail(i32*, %struct.fq_flow*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i32 @smp_store_release(i32*, i64) #1

declare dso_local i32 @flow_queue_add(%struct.fq_flow*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
