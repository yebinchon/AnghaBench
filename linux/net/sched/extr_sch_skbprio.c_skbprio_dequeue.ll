; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.skbprio_sched_data = type { i64, i64, %struct.TYPE_3__*, %struct.sk_buff_head* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@SKBPRIO_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @skbprio_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @skbprio_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.skbprio_sched_data*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.skbprio_sched_data* %8, %struct.skbprio_sched_data** %4, align 8
  %9 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %10 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %9, i32 0, i32 3
  %11 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %12 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %13 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %11, i64 %14
  store %struct.sk_buff_head* %15, %struct.sk_buff_head** %5, align 8
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %17 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %31, %struct.sk_buff* %32)
  %34 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @qdisc_bstats_update(%struct.Qdisc* %34, %struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i64 @qdisc_pkt_len(%struct.sk_buff* %37)
  %39 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %40 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %43 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %38
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %52 = call i64 @skb_queue_empty(%struct.sk_buff_head* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %25
  %55 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %56 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %59 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %64 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %69 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %74 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %80

75:                                               ; preds = %54
  %76 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %77 = call i64 @calc_new_high_prio(%struct.skbprio_sched_data* %76)
  %78 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %4, align 8
  %79 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %62
  br label %81

81:                                               ; preds = %80, %25
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %2, align 8
  br label %83

83:                                               ; preds = %81, %24
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %84
}

declare dso_local %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @calc_new_high_prio(%struct.skbprio_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
