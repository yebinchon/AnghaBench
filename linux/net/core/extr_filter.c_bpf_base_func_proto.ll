; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_base_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_base_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }

@bpf_map_lookup_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_update_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_delete_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_push_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_pop_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_peek_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_prandom_u32_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_raw_smp_processor_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_numa_node_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tail_call_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_ns_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@bpf_spin_lock_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_spin_unlock_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32)* @bpf_base_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @bpf_base_func_proto(i32 %0) #0 {
  %2 = alloca %struct.bpf_func_proto*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 136, label %5
    i32 132, label %6
    i32 137, label %7
    i32 133, label %8
    i32 134, label %9
    i32 135, label %10
    i32 140, label %11
    i32 139, label %12
    i32 141, label %13
    i32 129, label %14
    i32 138, label %15
  ]

5:                                                ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_lookup_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

6:                                                ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_update_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

7:                                                ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_delete_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

8:                                                ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_push_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

9:                                                ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_pop_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

10:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_map_peek_elem_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

11:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_get_prandom_u32_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

12:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_get_raw_smp_processor_id_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

13:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_get_numa_node_id_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

14:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_tail_call_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

15:                                               ; preds = %1
  store %struct.bpf_func_proto* @bpf_ktime_get_ns_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.bpf_func_proto* null, %struct.bpf_func_proto** %2, align 8
  br label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %28 [
    i32 131, label %24
    i32 130, label %25
    i32 128, label %26
  ]

24:                                               ; preds = %22
  store %struct.bpf_func_proto* @bpf_spin_lock_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

25:                                               ; preds = %22
  store %struct.bpf_func_proto* @bpf_spin_unlock_proto, %struct.bpf_func_proto** %2, align 8
  br label %29

26:                                               ; preds = %22
  %27 = call %struct.bpf_func_proto* (...) @bpf_get_trace_printk_proto()
  store %struct.bpf_func_proto* %27, %struct.bpf_func_proto** %2, align 8
  br label %29

28:                                               ; preds = %22
  store %struct.bpf_func_proto* null, %struct.bpf_func_proto** %2, align 8
  br label %29

29:                                               ; preds = %28, %26, %25, %24, %21, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %30 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %2, align 8
  ret %struct.bpf_func_proto* %30
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_func_proto* @bpf_get_trace_printk_proto(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
