; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_lwt_xmit_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_lwt_xmit_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }
%struct.bpf_prog = type { i32 }

@bpf_skb_get_tunnel_key_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_get_tunnel_opt_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_redirect_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_clone_redirect_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_change_tail_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_change_head_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_store_bytes_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_csum_update_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_l3_csum_replace_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_l4_csum_replace_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_set_hash_invalid_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_lwt_xmit_push_encap_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32, %struct.bpf_prog*)* @lwt_xmit_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @lwt_xmit_func_proto(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_func_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %25 [
    i32 132, label %7
    i32 130, label %8
    i32 131, label %11
    i32 129, label %12
    i32 136, label %15
    i32 141, label %16
    i32 133, label %17
    i32 134, label %18
    i32 128, label %19
    i32 140, label %20
    i32 139, label %21
    i32 138, label %22
    i32 135, label %23
    i32 137, label %24
  ]

7:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_get_tunnel_key_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32 %9)
  store %struct.bpf_func_proto* %10, %struct.bpf_func_proto** %3, align 8
  br label %29

11:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_get_tunnel_opt_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32 %13)
  store %struct.bpf_func_proto* %14, %struct.bpf_func_proto** %3, align 8
  br label %29

15:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_redirect_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

16:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_clone_redirect_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

17:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_change_tail_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

18:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_change_head_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

19:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_store_bytes_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

20:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_csum_update_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

21:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_l3_csum_replace_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

22:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_l4_csum_replace_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

23:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_set_hash_invalid_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

24:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_lwt_xmit_push_encap_proto, %struct.bpf_func_proto** %3, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %28 = call %struct.bpf_func_proto* @lwt_out_func_proto(i32 %26, %struct.bpf_prog* %27)
  store %struct.bpf_func_proto* %28, %struct.bpf_func_proto** %3, align 8
  br label %29

29:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %12, %11, %8, %7
  %30 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  ret %struct.bpf_func_proto* %30
}

declare dso_local %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32) #1

declare dso_local %struct.bpf_func_proto* @lwt_out_func_proto(i32, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
