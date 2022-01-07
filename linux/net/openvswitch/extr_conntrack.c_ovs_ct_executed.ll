; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_executed.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_executed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { i32 }
%struct.sw_flow_key = type { i32, i64 }
%struct.ovs_conntrack_info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@OVS_CS_F_TRACKED = common dso_local global i32 0, align 4
@OVS_CS_F_INVALID = common dso_local global i32 0, align 4
@OVS_CS_F_NAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn* (%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*, i32*)* @ovs_ct_executed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn* @ovs_ct_executed(%struct.net* %0, %struct.sw_flow_key* %1, %struct.ovs_conntrack_info* %2, %struct.sk_buff* %3, i32* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_conntrack_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_conntrack_info* %2, %struct.ovs_conntrack_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.nf_conn* null, %struct.nf_conn** %11, align 8
  %12 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %13 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OVS_CS_F_TRACKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %5
  %19 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %20 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OVS_CS_F_INVALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %27 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %30 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br label %34

34:                                               ; preds = %25, %18, %5
  %35 = phi i1 [ false, %18 ], [ false, %5 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %43 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  %47 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %48 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46, %34
  %52 = load %struct.net*, %struct.net** %6, align 8
  %53 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %54 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %53, i32 0, i32 1
  %55 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %56 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %60 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @OVS_CS_F_NAT_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call %struct.nf_conn* @ovs_ct_find_existing(%struct.net* %52, %struct.TYPE_2__* %54, i32 %57, %struct.sk_buff* %58, i32 %67)
  store %struct.nf_conn* %68, %struct.nf_conn** %11, align 8
  br label %69

69:                                               ; preds = %51, %46, %41
  %70 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  ret %struct.nf_conn* %70
}

declare dso_local %struct.nf_conn* @ovs_ct_find_existing(%struct.net*, %struct.TYPE_2__*, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
