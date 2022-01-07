; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sfq_sched_data = type { i32, i32*, %struct.TYPE_6__*, %struct.sfq_slot*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.sfq_slot = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@SFQ_EMPTY_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff**)* @sfq_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_drop(%struct.Qdisc* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sfq_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sfq_slot*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.sfq_sched_data* %13, %struct.sfq_sched_data** %6, align 8
  %14 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %15 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %70

19:                                               ; preds = %2
  %20 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %21 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %29 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %28, i32 0, i32 3
  %30 = load %struct.sfq_slot*, %struct.sfq_slot** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %30, i64 %32
  store %struct.sfq_slot* %33, %struct.sfq_slot** %11, align 8
  br label %34

34:                                               ; preds = %73, %19
  %35 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.sfq_slot*, %struct.sfq_slot** %11, align 8
  %41 = call %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot* %40)
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.sfq_slot*, %struct.sfq_slot** %11, align 8
  %44 = call %struct.sk_buff* @slot_dequeue_tail(%struct.sfq_slot* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi %struct.sk_buff* [ %41, %39 ], [ %44, %42 ]
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call i32 @qdisc_pkt_len(%struct.sk_buff* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.sfq_slot*, %struct.sfq_slot** %11, align 8
  %51 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @sfq_dec(%struct.sfq_sched_data* %54, i32 %55)
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %62, %struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %68 = call i32 @qdisc_drop(%struct.sk_buff* %65, %struct.Qdisc* %66, %struct.sk_buff** %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %101

70:                                               ; preds = %2
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %75 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %80 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %79, i32 0, i32 3
  %81 = load %struct.sfq_slot*, %struct.sfq_slot** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %81, i64 %83
  store %struct.sfq_slot* %84, %struct.sfq_slot** %11, align 8
  %85 = load %struct.sfq_slot*, %struct.sfq_slot** %11, align 8
  %86 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %89 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @SFQ_EMPTY_SLOT, align 4
  %93 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %94 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.sfq_slot*, %struct.sfq_slot** %11, align 8
  %97 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %92, i32* %99, align 4
  br label %34

100:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %45
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot*) #1

declare dso_local %struct.sk_buff* @slot_dequeue_tail(%struct.sfq_slot*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @sfq_dec(%struct.sfq_sched_data*, i32) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
