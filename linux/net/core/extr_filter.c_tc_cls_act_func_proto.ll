; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_tc_cls_act_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_tc_cls_act_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }
%struct.bpf_prog = type { i32 }

@bpf_skb_store_bytes_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_load_bytes_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_load_bytes_relative_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_pull_data_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_csum_diff_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_csum_update_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_l3_csum_replace_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_l4_csum_replace_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_clone_redirect_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_cgroup_classid_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_vlan_push_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_vlan_pop_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_change_proto_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_change_type_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_adjust_room_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_change_tail_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_get_tunnel_key_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_get_tunnel_opt_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_redirect_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_route_realm_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_hash_recalc_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_set_hash_invalid_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_set_hash_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_event_output_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_smp_processor_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_under_cgroup_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_socket_cookie_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_socket_uid_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_fib_lookup_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_fullsock_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_storage_get_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_storage_delete_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_listener_sock_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_lookup_tcp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_lookup_udp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_sk_release_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_ancestor_cgroup_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_cgroup_id_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_ecn_set_ce_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skb_get_xfrm_state_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_skc_lookup_tcp_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tcp_check_syncookie_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tcp_gen_syncookie_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@bpf_tcp_sock_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32, %struct.bpf_prog*)* @tc_cls_act_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @tc_cls_act_func_proto(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_func_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %45 [
    i32 135, label %7
    i32 140, label %8
    i32 139, label %9
    i32 138, label %10
    i32 172, label %11
    i32 171, label %12
    i32 162, label %13
    i32 161, label %14
    i32 173, label %15
    i32 169, label %16
    i32 132, label %17
    i32 133, label %18
    i32 147, label %19
    i32 145, label %20
    i32 150, label %21
    i32 146, label %22
    i32 143, label %23
    i32 137, label %24
    i32 142, label %27
    i32 136, label %28
    i32 159, label %31
    i32 166, label %32
    i32 168, label %33
    i32 157, label %34
    i32 158, label %35
    i32 160, label %36
    i32 165, label %37
    i32 134, label %38
    i32 164, label %39
    i32 163, label %40
    i32 170, label %41
    i32 156, label %42
    i32 151, label %43
    i32 152, label %44
  ]

7:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_store_bytes_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

8:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_load_bytes_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

9:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_load_bytes_relative_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

10:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_pull_data_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

11:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_csum_diff_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

12:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_csum_update_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

13:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_l3_csum_replace_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

14:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_l4_csum_replace_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

15:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_clone_redirect_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

16:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_cgroup_classid_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

17:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_vlan_push_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

18:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_vlan_pop_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

19:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_change_proto_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

20:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_change_type_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

21:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_adjust_room_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

22:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_change_tail_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

23:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_get_tunnel_key_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32 %25)
  store %struct.bpf_func_proto* %26, %struct.bpf_func_proto** %3, align 8
  br label %48

27:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_get_tunnel_opt_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32 %29)
  store %struct.bpf_func_proto* %30, %struct.bpf_func_proto** %3, align 8
  br label %48

31:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_redirect_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

32:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_route_realm_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

33:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_hash_recalc_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

34:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_set_hash_invalid_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

35:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_set_hash_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

36:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_event_output_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

37:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_smp_processor_id_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

38:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_under_cgroup_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

39:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_socket_cookie_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

40:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_get_socket_uid_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

41:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_skb_fib_lookup_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

42:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_sk_fullsock_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

43:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_sk_storage_get_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

44:                                               ; preds = %2
  store %struct.bpf_func_proto* @bpf_sk_storage_delete_proto, %struct.bpf_func_proto** %3, align 8
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.bpf_func_proto* @bpf_base_func_proto(i32 %46)
  store %struct.bpf_func_proto* %47, %struct.bpf_func_proto** %3, align 8
  br label %48

48:                                               ; preds = %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %28, %27, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %49 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  ret %struct.bpf_func_proto* %49
}

declare dso_local %struct.bpf_func_proto* @bpf_get_skb_set_tunnel_proto(i32) #1

declare dso_local %struct.bpf_func_proto* @bpf_base_func_proto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
