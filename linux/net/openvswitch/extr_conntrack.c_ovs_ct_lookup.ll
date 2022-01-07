; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.ovs_conntrack_info = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nf_conn = type { i32 }

@OVS_CS_F_TRACKED = common dso_local global i32 0, align 4
@OVS_CS_F_NEW = common dso_local global i32 0, align 4
@OVS_CS_F_RELATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*)* @ovs_ct_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_ct_lookup(%struct.net* %0, %struct.sw_flow_key* %1, %struct.ovs_conntrack_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_conntrack_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conntrack_expect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_conntrack_info* %2, %struct.ovs_conntrack_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %16 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %15, i32 0, i32 0
  %17 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %18 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.nf_conntrack_expect* @ovs_ct_expect_find(%struct.net* %14, i32* %16, i32 %19, %struct.sk_buff* %20)
  store %struct.nf_conntrack_expect* %21, %struct.nf_conntrack_expect** %10, align 8
  %22 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %23 = icmp ne %struct.nf_conntrack_expect* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load i32, i32* @OVS_CS_F_TRACKED, align 4
  %26 = load i32, i32* @OVS_CS_F_NEW, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OVS_CS_F_RELATED, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %33 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %32, i32 0, i32 0
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__ovs_ct_update_key(%struct.sw_flow_key* %30, i32 %31, i32* %33, i32 %36)
  br label %58

38:                                               ; preds = %4
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %41 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = call i32 @__ovs_ct_lookup(%struct.net* %39, %struct.sw_flow_key* %40, %struct.ovs_conntrack_info* %41, %struct.sk_buff* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %59

48:                                               ; preds = %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i64 @skb_nfct(%struct.sk_buff* %49)
  %51 = inttoptr i64 %50 to %struct.nf_conn*
  store %struct.nf_conn* %51, %struct.nf_conn** %12, align 8
  %52 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %53 = icmp ne %struct.nf_conn* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %56 = call i32 @nf_ct_deliver_cached_events(%struct.nf_conn* %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %24
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.nf_conntrack_expect* @ovs_ct_expect_find(%struct.net*, i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__ovs_ct_update_key(%struct.sw_flow_key*, i32, i32*, i32) #1

declare dso_local i32 @__ovs_ct_lookup(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*) #1

declare dso_local i64 @skb_nfct(%struct.sk_buff*) #1

declare dso_local i32 @nf_ct_deliver_cached_events(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
