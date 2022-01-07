; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fq_codel_sched_data = type { i32, i32*, i32, %struct.fq_codel_flow* }
%struct.fq_codel_flow = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, %struct.sk_buff**)* @fq_codel_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_drop(%struct.Qdisc* %0, i32 %1, %struct.sk_buff** %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.fq_codel_sched_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fq_codel_flow*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %6, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = call %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.fq_codel_sched_data* %17, %struct.fq_codel_sched_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %44, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %21 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %26 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %36 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %34, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %18

47:                                               ; preds = %18
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %51 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %50, i32 0, i32 3
  %52 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %52, i64 %54
  store %struct.fq_codel_flow* %55, %struct.fq_codel_flow** %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %85, %47
  %57 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %13, align 8
  %58 = call %struct.sk_buff* @dequeue_head(%struct.fq_codel_flow* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i64 @qdisc_pkt_len(%struct.sk_buff* %59)
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call %struct.TYPE_8__* @get_codel_cb(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %75 = call i32 @__qdisc_drop(%struct.sk_buff* %73, %struct.sk_buff** %74)
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ult i32 %82, %83
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i1 [ false, %76 ], [ %84, %81 ]
  br i1 %86, label %56, label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %13, align 8
  %90 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %96 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %101, %94
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %7, align 8
  %105 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %110 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %116 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %122 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %124, %120
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @dequeue_head(%struct.fq_codel_flow*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @get_codel_cb(%struct.sk_buff*) #1

declare dso_local i32 @__qdisc_drop(%struct.sk_buff*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
