; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_update_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_update_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_zone = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_conntrack_info = type { %struct.nf_conntrack_zone }
%struct.sw_flow_key = type { i32 }
%struct.nf_conn = type { i32, i64 }

@nf_ct_zone_dflt = common dso_local global %struct.nf_conntrack_zone zeroinitializer, align 4
@OVS_CS_F_NEW = common dso_local global i32 0, align 4
@OVS_CS_F_RELATED = common dso_local global i32 0, align 4
@OVS_CS_F_NAT_MASK = common dso_local global i32 0, align 4
@IPS_SRC_NAT = common dso_local global i32 0, align 4
@OVS_CS_F_SRC_NAT = common dso_local global i32 0, align 4
@IPS_DST_NAT = common dso_local global i32 0, align 4
@OVS_CS_F_DST_NAT = common dso_local global i32 0, align 4
@OVS_CS_F_TRACKED = common dso_local global i32 0, align 4
@OVS_CS_F_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ovs_conntrack_info*, %struct.sw_flow_key*, i32, i32)* @ovs_ct_update_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_ct_update_key(%struct.sk_buff* %0, %struct.ovs_conntrack_info* %1, %struct.sw_flow_key* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ovs_conntrack_info*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conntrack_zone*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ovs_conntrack_info* %1, %struct.ovs_conntrack_info** %7, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.nf_conntrack_zone* @nf_ct_zone_dflt, %struct.nf_conntrack_zone** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %15, i32* %12)
  store %struct.nf_conn* %16, %struct.nf_conn** %13, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %18 = icmp ne %struct.nf_conn* %17, null
  br i1 %18, label %19, label %75

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @ovs_ct_get_state(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %23 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @OVS_CS_F_NEW, align 4
  %27 = load i32, i32* %14, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @OVS_CS_F_RELATED, align 4
  %36 = load i32, i32* %14, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %43 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OVS_CS_F_NAT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %72

49:                                               ; preds = %38
  %50 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IPS_SRC_NAT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @OVS_CS_F_SRC_NAT, align 4
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %62 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IPS_DST_NAT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @OVS_CS_F_DST_NAT, align 4
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %41
  %73 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %74 = call %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn* %73)
  store %struct.nf_conntrack_zone* %74, %struct.nf_conntrack_zone** %11, align 8
  br label %89

75:                                               ; preds = %5
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* @OVS_CS_F_TRACKED, align 4
  %80 = load i32, i32* @OVS_CS_F_INVALID, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %7, align 8
  %83 = icmp ne %struct.ovs_conntrack_info* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %7, align 8
  %86 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %85, i32 0, i32 0
  store %struct.nf_conntrack_zone* %86, %struct.nf_conntrack_zone** %11, align 8
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %11, align 8
  %93 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %94 = call i32 @__ovs_ct_update_key(%struct.sw_flow_key* %90, i32 %91, %struct.nf_conntrack_zone* %92, %struct.nf_conn* %93)
  ret void
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ovs_ct_get_state(i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i32 @__ovs_ct_update_key(%struct.sw_flow_key*, i32, %struct.nf_conntrack_zone*, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
