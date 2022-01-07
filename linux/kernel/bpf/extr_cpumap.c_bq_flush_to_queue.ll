; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_bq_flush_to_queue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_bq_flush_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_bulk_queue = type { i32, i32, %struct.xdp_frame**, %struct.bpf_cpu_map_entry* }
%struct.xdp_frame = type { i32 }
%struct.bpf_cpu_map_entry = type { i32, i32, %struct.ptr_ring* }
%struct.ptr_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_bulk_queue*, i32)* @bq_flush_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq_flush_to_queue(%struct.xdp_bulk_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_bulk_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_cpu_map_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptr_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdp_frame*, align 8
  %13 = alloca i32, align 4
  store %struct.xdp_bulk_queue* %0, %struct.xdp_bulk_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %15 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %14, i32 0, i32 3
  %16 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %15, align 8
  store %struct.bpf_cpu_map_entry* %16, %struct.bpf_cpu_map_entry** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_cpu_map_entry, %struct.bpf_cpu_map_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %21 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

29:                                               ; preds = %2
  %30 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %6, align 8
  %31 = getelementptr inbounds %struct.bpf_cpu_map_entry, %struct.bpf_cpu_map_entry* %30, i32 0, i32 2
  %32 = load %struct.ptr_ring*, %struct.ptr_ring** %31, align 8
  store %struct.ptr_ring* %32, %struct.ptr_ring** %10, align 8
  %33 = load %struct.ptr_ring*, %struct.ptr_ring** %10, align 8
  %34 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %71, %29
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %39 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %44 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %43, i32 0, i32 2
  %45 = load %struct.xdp_frame**, %struct.xdp_frame*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %45, i64 %47
  %49 = load %struct.xdp_frame*, %struct.xdp_frame** %48, align 8
  store %struct.xdp_frame* %49, %struct.xdp_frame** %12, align 8
  %50 = load %struct.ptr_ring*, %struct.ptr_ring** %10, align 8
  %51 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %52 = call i32 @__ptr_ring_produce(%struct.ptr_ring* %50, %struct.xdp_frame* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %63 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %62)
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %66 = call i32 @xdp_return_frame(%struct.xdp_frame* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %76 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.ptr_ring*, %struct.ptr_ring** %10, align 8
  %78 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %4, align 8
  %81 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %80, i32 0, i32 1
  %82 = call i32 @__list_del_clearprev(i32* %81)
  %83 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %6, align 8
  %84 = getelementptr inbounds %struct.bpf_cpu_map_entry, %struct.bpf_cpu_map_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @trace_xdp_cpumap_enqueue(i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %74, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ptr_ring_produce(%struct.ptr_ring*, %struct.xdp_frame*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__list_del_clearprev(i32*) #1

declare dso_local i32 @trace_xdp_cpumap_enqueue(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
