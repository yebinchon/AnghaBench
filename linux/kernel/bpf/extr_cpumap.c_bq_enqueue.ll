; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_bq_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_bq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_cpu_map_entry = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.list_head = type { i32 }
%struct.xdp_bulk_queue = type { i64, %struct.TYPE_4__, %struct.xdp_frame** }
%struct.TYPE_4__ = type { i32 }

@CPU_MAP_BULK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_cpu_map_entry*, %struct.xdp_frame*)* @bq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq_enqueue(%struct.bpf_cpu_map_entry* %0, %struct.xdp_frame* %1) #0 {
  %3 = alloca %struct.bpf_cpu_map_entry*, align 8
  %4 = alloca %struct.xdp_frame*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.xdp_bulk_queue*, align 8
  store %struct.bpf_cpu_map_entry* %0, %struct.bpf_cpu_map_entry** %3, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %4, align 8
  %7 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_cpu_map_entry, %struct.bpf_cpu_map_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @this_cpu_ptr(i32 %11)
  %13 = bitcast i8* %12 to %struct.list_head*
  store %struct.list_head* %13, %struct.list_head** %5, align 8
  %14 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_cpu_map_entry, %struct.bpf_cpu_map_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @this_cpu_ptr(i32 %16)
  %18 = bitcast i8* %17 to %struct.xdp_bulk_queue*
  store %struct.xdp_bulk_queue* %18, %struct.xdp_bulk_queue** %6, align 8
  %19 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %20 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CPU_MAP_BULK_SIZE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %29 = call i32 @bq_flush_to_queue(%struct.xdp_bulk_queue* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.xdp_frame*, %struct.xdp_frame** %4, align 8
  %32 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %33 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %32, i32 0, i32 2
  %34 = load %struct.xdp_frame**, %struct.xdp_frame*** %33, align 8
  %35 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %36 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %34, i64 %37
  store %struct.xdp_frame* %31, %struct.xdp_frame** %39, align 8
  %40 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %41 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %30
  %46 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %6, align 8
  %47 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %46, i32 0, i32 1
  %48 = load %struct.list_head*, %struct.list_head** %5, align 8
  %49 = call i32 @list_add(%struct.TYPE_4__* %47, %struct.list_head* %48)
  br label %50

50:                                               ; preds = %45, %30
  ret i32 0
}

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bq_flush_to_queue(%struct.xdp_bulk_queue*, i32) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
