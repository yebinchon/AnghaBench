; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_dequeue_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_dequeue_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cake_sched_data = type { i64, i64, i64, i32, %struct.cake_tin_data* }
%struct.cake_tin_data = type { i32*, i32, i32*, %struct.cake_flow* }
%struct.cake_flow = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @cake_dequeue_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cake_dequeue_one(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cake_sched_data*, align 8
  %4 = alloca %struct.cake_tin_data*, align 8
  %5 = alloca %struct.cake_flow*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.cake_sched_data* %9, %struct.cake_sched_data** %3, align 8
  %10 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %11 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %10, i32 0, i32 4
  %12 = load %struct.cake_tin_data*, %struct.cake_tin_data** %11, align 8
  %13 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %12, i64 %15
  store %struct.cake_tin_data* %16, %struct.cake_tin_data** %4, align 8
  %17 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %18 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %17, i32 0, i32 3
  %19 = load %struct.cake_flow*, %struct.cake_flow** %18, align 8
  %20 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %21 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %19, i64 %22
  store %struct.cake_flow* %23, %struct.cake_flow** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %24 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %25 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %1
  %29 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %30 = call %struct.sk_buff* @dequeue_head(%struct.cake_flow* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i64 @qdisc_pkt_len(%struct.sk_buff* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %35 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %38 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %33
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %47 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %54 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %64 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %70 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %75 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %28
  %79 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %80 = load %struct.cake_tin_data*, %struct.cake_tin_data** %4, align 8
  %81 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.cake_sched_data*, %struct.cake_sched_data** %3, align 8
  %84 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cake_heapify(%struct.cake_sched_data* %79, i32 %87)
  br label %89

89:                                               ; preds = %78, %28
  br label %90

90:                                               ; preds = %89, %1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %91
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @dequeue_head(%struct.cake_flow*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @cake_heapify(%struct.cake_sched_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
