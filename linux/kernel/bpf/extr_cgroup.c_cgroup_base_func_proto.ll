; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_base_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_cgroup_base_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }
%struct.bpf_prog = type { i32 }

@bpf_map_lookup_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_update_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_delete_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_push_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_pop_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_peek_elem_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_uid_gid_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_local_storage_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_cgroup_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32, %struct.bpf_prog*)* @cgroup_base_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @cgroup_base_func_proto(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_func_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 133, label %7
    i32 129, label %8
    i32 134, label %9
    i32 130, label %10
    i32 131, label %11
    i32 132, label %12
    i32 136, label %13
    i32 135, label %14
    i32 137, label %15
    i32 128, label %16
  ]

7:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_lookup_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

8:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_update_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

9:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_delete_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

10:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_push_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

11:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_pop_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

12:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_map_peek_elem_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

13:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_current_uid_gid_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

14:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_local_storage_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

15:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_current_cgroup_id_proto, %struct.bpf_func_proto** %3, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call %struct.bpf_func_proto* (...) @bpf_get_trace_printk_proto()
  store %struct.bpf_func_proto* %21, %struct.bpf_func_proto** %3, align 8
  br label %24

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %2, %22
  store %struct.bpf_func_proto* null, %struct.bpf_func_proto** %3, align 8
  br label %24

24:                                               ; preds = %23, %20, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %25 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  ret %struct.bpf_func_proto* %25
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_func_proto* @bpf_get_trace_printk_proto(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
