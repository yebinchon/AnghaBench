; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }
%struct.bpf_prog = type { i32 }

@bpf_xdp_event_output_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_smp_processor_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_csum_diff_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_adjust_head_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_adjust_meta_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_redirect_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_redirect_map_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_adjust_tail_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_fib_lookup_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_release_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tcp_check_syncookie_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tcp_gen_syncookie_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_sk_lookup_tcp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_sk_lookup_udp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_xdp_skc_lookup_tcp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32, %struct.bpf_prog*)* @xdp_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @xdp_func_proto(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_func_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %16 [
    i32 139, label %7
    i32 140, label %8
    i32 142, label %9
    i32 130, label %10
    i32 129, label %11
    i32 138, label %12
    i32 137, label %13
    i32 128, label %14
    i32 141, label %15
  ]

7:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_event_output_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

8:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_smp_processor_id_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

9:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_csum_diff_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

10:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_adjust_head_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

11:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_adjust_meta_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

12:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_redirect_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

13:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_redirect_map_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

14:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_adjust_tail_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

15:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_xdp_fib_lookup_proto, %struct.bpf_func_proto** %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.bpf_func_proto* @bpf_base_func_proto(i32 %17)
  store %struct.bpf_func_proto* %18, %struct.bpf_func_proto** %3, align 8
  br label %19

19:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %20 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  ret %struct.bpf_func_proto* %20
}

declare dso_local %struct.bpf_func_proto* @bpf_base_func_proto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
