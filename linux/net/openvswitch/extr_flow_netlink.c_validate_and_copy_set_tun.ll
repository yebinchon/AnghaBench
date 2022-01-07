; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_set_tun.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_set_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type opaque
%struct.sw_flow_actions = type { i32 }
%struct.sw_flow_match = type { i32 }
%struct.sw_flow_key = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.metadata_dst = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.TYPE_8__, i32, i32 }
%struct.ovs_tunnel_info = type { %struct.metadata_dst* }
%struct.dst_entry = type { i32 }

@TUNNEL_GENEVE_OPT = common dso_local global i64 0, align 8
@TUNNEL_VXLAN_OPT = common dso_local global i64 0, align 8
@TUNNEL_ERSPAN_OPT = common dso_local global i64 0, align 8
@OVS_ACTION_ATTR_SET = common dso_local global i32 0, align 4
@METADATA_IP_TUNNEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_TUNNEL_INFO = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_IPV6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sw_flow_actions**, i32)* @validate_and_copy_set_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_and_copy_set_tun(%struct.nlattr* %0, %struct.sw_flow_actions** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sw_flow_actions**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_flow_match, align 4
  %9 = alloca %struct.sw_flow_key, align 8
  %10 = alloca %struct.metadata_dst*, align 8
  %11 = alloca %struct.ip_tunnel_info*, align 8
  %12 = alloca %struct.ovs_tunnel_info*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.sw_flow_actions** %1, %struct.sw_flow_actions*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %18 = call i32 @ovs_match_init(%struct.sw_flow_match* %8, %struct.sw_flow_key* %9, i32 1, i32* null)
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = call %struct.ovs_tunnel_info* @nla_data(%struct.nlattr* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ip_tun_from_nlattr(%struct.ovs_tunnel_info* %20, %struct.sw_flow_match* %8, i32 0, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %4, align 4
  br label %154

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* %16, align 4
  switch i32 %32, label %45 [
    i32 129, label %33
    i32 128, label %41
    i32 130, label %43
  ]

33:                                               ; preds = %31
  %34 = call i32 @validate_geneve_opts(%struct.sw_flow_key* %9)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %4, align 4
  br label %154

39:                                               ; preds = %33
  %40 = load i64, i64* @TUNNEL_GENEVE_OPT, align 8
  store i64 %40, i64* %17, align 8
  br label %45

41:                                               ; preds = %31
  %42 = load i64, i64* @TUNNEL_VXLAN_OPT, align 8
  store i64 %42, i64* %17, align 8
  br label %45

43:                                               ; preds = %31
  %44 = load i64, i64* @TUNNEL_ERSPAN_OPT, align 8
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %31, %43, %41, %39
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %6, align 8
  %48 = load i32, i32* @OVS_ACTION_ATTR_SET, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %47, i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %4, align 4
  br label %154

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @METADATA_IP_TUNNEL, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.metadata_dst* @metadata_dst_alloc(i64 %57, i32 %58, i32 %59)
  store %struct.metadata_dst* %60, %struct.metadata_dst** %10, align 8
  %61 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %62 = icmp ne %struct.metadata_dst* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %154

66:                                               ; preds = %55
  %67 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %68 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %69, i32 0, i32 2
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @dst_cache_init(i32* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %77 = bitcast %struct.metadata_dst* %76 to %struct.dst_entry*
  %78 = call i32 @dst_release(%struct.dst_entry* %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %4, align 4
  br label %154

80:                                               ; preds = %66
  %81 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %6, align 8
  %82 = load i32, i32* @OVS_KEY_ATTR_TUNNEL_INFO, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call %struct.nlattr* @__add_action(%struct.sw_flow_actions** %81, i32 %82, i32* null, i32 8, i32 %83)
  store %struct.nlattr* %84, %struct.nlattr** %13, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %86 = call i64 @IS_ERR(%struct.nlattr* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %90 = bitcast %struct.metadata_dst* %89 to %struct.dst_entry*
  %91 = call i32 @dst_release(%struct.dst_entry* %90)
  %92 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %93 = call i32 @PTR_ERR(%struct.nlattr* %92)
  store i32 %93, i32* %4, align 4
  br label %154

94:                                               ; preds = %80
  %95 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %96 = call %struct.ovs_tunnel_info* @nla_data(%struct.nlattr* %95)
  store %struct.ovs_tunnel_info* %96, %struct.ovs_tunnel_info** %12, align 8
  %97 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %98 = load %struct.ovs_tunnel_info*, %struct.ovs_tunnel_info** %12, align 8
  %99 = getelementptr inbounds %struct.ovs_tunnel_info, %struct.ovs_tunnel_info* %98, i32 0, i32 0
  store %struct.metadata_dst* %97, %struct.metadata_dst** %99, align 8
  %100 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %101 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store %struct.ip_tunnel_info* %102, %struct.ip_tunnel_info** %11, align 8
  %103 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %104 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %105 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AF_INET6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %94
  %111 = load i32, i32* @IP_TUNNEL_INFO_IPV6, align 4
  %112 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %135

116:                                              ; preds = %94
  %117 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AF_INET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load i32, i32* @IP_TUNNEL_INFO_BRIDGE, align 4
  %130 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %121, %116
  br label %135

135:                                              ; preds = %134, %110
  %136 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %137 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 2
  %139 = bitcast %struct.TYPE_8__* %137 to i8*
  %140 = bitcast %struct.TYPE_8__* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 8, i1 false)
  %141 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %142 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @TUN_METADATA_OPTS(%struct.sw_flow_key* %9, i64 %143)
  %145 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %9, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %17, align 8
  %148 = call i32 @ip_tunnel_info_opts_set(%struct.ip_tunnel_info* %141, i32 %144, i64 %146, i64 %147)
  %149 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %6, align 8
  %150 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %150, i32 %151)
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %135, %88, %75, %63, %53, %37, %25
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ovs_match_init(%struct.sw_flow_match*, %struct.sw_flow_key*, i32, i32*) #1

declare dso_local i32 @ip_tun_from_nlattr(%struct.ovs_tunnel_info*, %struct.sw_flow_match*, i32, i32) #1

declare dso_local %struct.ovs_tunnel_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @validate_geneve_opts(%struct.sw_flow_key*) #1

declare dso_local i32 @add_nested_action_start(%struct.sw_flow_actions**, i32, i32) #1

declare dso_local %struct.metadata_dst* @metadata_dst_alloc(i64, i32, i32) #1

declare dso_local i32 @dst_cache_init(i32*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.nlattr* @__add_action(%struct.sw_flow_actions**, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ip_tunnel_info_opts_set(%struct.ip_tunnel_info*, i32, i64, i64) #1

declare dso_local i32 @TUN_METADATA_OPTS(%struct.sw_flow_key*, i64) #1

declare dso_local i32 @add_nested_action_end(%struct.sw_flow_actions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
