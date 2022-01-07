; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.cake_sched_data = type { i32, i32, i32, %struct.cake_tin_data*, %struct.cake_heap_entry* }
%struct.cake_tin_data = type { i32, i32, i32*, i32, i32, %struct.cake_flow* }
%struct.cake_flow = type { i32, i32 }
%struct.cake_heap_entry = type { i64, i64 }

@CAKE_MAX_TINS = common dso_local global i32 0, align 4
@CAKE_QUEUES = common dso_local global i32 0, align 4
@CAKE_FLAG_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff**)* @cake_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_drop(%struct.Qdisc* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.cake_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cake_heap_entry, align 8
  %12 = alloca %struct.cake_tin_data*, align 8
  %13 = alloca %struct.cake_flow*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.cake_sched_data* %17, %struct.cake_sched_data** %6, align 8
  %18 = call i32 (...) @ktime_get()
  store i32 %18, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %20 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @CAKE_MAX_TINS, align 4
  %25 = load i32, i32* @CAKE_QUEUES, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %35, %23
  %29 = load i32, i32* %15, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @cake_heapify(%struct.cake_sched_data* %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %15, align 4
  br label %28

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %40, i32 0, i32 0
  store i32 65535, i32* %41, align 8
  %42 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %43 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %42, i32 0, i32 4
  %44 = load %struct.cake_heap_entry*, %struct.cake_heap_entry** %43, align 8
  %45 = getelementptr inbounds %struct.cake_heap_entry, %struct.cake_heap_entry* %44, i64 0
  %46 = bitcast %struct.cake_heap_entry* %11 to i8*
  %47 = bitcast %struct.cake_heap_entry* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = getelementptr inbounds %struct.cake_heap_entry, %struct.cake_heap_entry* %11, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = getelementptr inbounds %struct.cake_heap_entry, %struct.cake_heap_entry* %11, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %52, i32 0, i32 3
  %54 = load %struct.cake_tin_data*, %struct.cake_tin_data** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %54, i64 %55
  store %struct.cake_tin_data* %56, %struct.cake_tin_data** %12, align 8
  %57 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %58 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %57, i32 0, i32 5
  %59 = load %struct.cake_flow*, %struct.cake_flow** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %59, i64 %60
  store %struct.cake_flow* %61, %struct.cake_flow** %13, align 8
  %62 = load %struct.cake_flow*, %struct.cake_flow** %13, align 8
  %63 = call %struct.sk_buff* @dequeue_head(%struct.cake_flow* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %39
  %71 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = shl i64 %74, 16
  %76 = add i64 %73, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %172

78:                                               ; preds = %39
  %79 = load %struct.cake_flow*, %struct.cake_flow** %13, align 8
  %80 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %79, i32 0, i32 1
  %81 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %82 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %81, i32 0, i32 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @cobalt_queue_full(i32* %80, i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %88 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = call i64 @qdisc_pkt_len(%struct.sk_buff* %92)
  store i64 %93, i64* %10, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %98 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %105 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, %103
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %115 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %122 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, %120
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %128, i32 1, i64 %129)
  %131 = load %struct.cake_flow*, %struct.cake_flow** %13, align 8
  %132 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %136 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %140 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %145 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CAKE_FLAG_INGRESS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %91
  %151 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %152 = load %struct.cake_tin_data*, %struct.cake_tin_data** %12, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @cake_advance_shaper(%struct.cake_sched_data* %151, %struct.cake_tin_data* %152, %struct.sk_buff* %153, i32 %154, i32 1)
  br label %156

156:                                              ; preds = %150, %91
  %157 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %158 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %159 = call i32 @__qdisc_drop(%struct.sk_buff* %157, %struct.sk_buff** %158)
  %160 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %161 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.cake_sched_data*, %struct.cake_sched_data** %6, align 8
  %166 = call i32 @cake_heapify(%struct.cake_sched_data* %165, i32 0)
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %9, align 8
  %169 = shl i64 %168, 16
  %170 = add i64 %167, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %156, %70
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @cake_heapify(%struct.cake_sched_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @dequeue_head(%struct.cake_flow*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cobalt_queue_full(i32*, i32*, i32) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i64) #1

declare dso_local i32 @cake_advance_shaper(%struct.cake_sched_data*, %struct.cake_tin_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__qdisc_drop(%struct.sk_buff*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
