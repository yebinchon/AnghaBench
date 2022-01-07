; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.sw_flow = type { i32 }
%struct.datapath = type { i32 }
%struct.sw_flow_match = type { i32 }
%struct.sw_flow_id = type { i32 }

@OVS_FLOW_ATTR_UFID_FLAGS = common dso_local global i64 0, align 8
@OVS_FLOW_ATTR_PROBE = common dso_local global i64 0, align 8
@OVS_FLOW_ATTR_UFID = common dso_local global i64 0, align 8
@OVS_FLOW_ATTR_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Flow get message rejected, Key attribute missing.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_flow_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sw_flow_key, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sw_flow*, align 8
  %12 = alloca %struct.datapath*, align 8
  %13 = alloca %struct.sw_flow_match, align 4
  %14 = alloca %struct.sw_flow_id, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.nlattr**, %struct.nlattr*** %20, align 8
  store %struct.nlattr** %21, %struct.nlattr*** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load %struct.ovs_header*, %struct.ovs_header** %23, align 8
  store %struct.ovs_header* %24, %struct.ovs_header** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.net* @sock_net(i32 %27)
  store %struct.net* %28, %struct.net** %8, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @OVS_FLOW_ATTR_UFID_FLAGS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @ovs_nla_get_ufid_flags(%struct.nlattr* %32)
  store i32 %33, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %35 = load i64, i64* @OVS_FLOW_ATTR_PROBE, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %42 = load i64, i64* @OVS_FLOW_ATTR_UFID, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @ovs_nla_get_ufid(%struct.sw_flow_id* %14, %struct.nlattr* %44, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %48 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %2
  %53 = call i32 @ovs_match_init(%struct.sw_flow_match* %13, %struct.sw_flow_key* %9, i32 1, i32* null)
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %56 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @ovs_nla_get_match(%struct.net* %54, %struct.sw_flow_match* %13, %struct.nlattr* %58, i32* null, i32 %59)
  store i32 %60, i32* %16, align 4
  br label %70

61:                                               ; preds = %2
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @OVS_NLERR(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %3, align 4
  br label %130

75:                                               ; preds = %70
  %76 = call i32 (...) @ovs_lock()
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.net* @sock_net(i32 %79)
  %81 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %82 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.datapath* @get_dp(%struct.net* %80, i32 %83)
  store %struct.datapath* %84, %struct.datapath** %12, align 8
  %85 = load %struct.datapath*, %struct.datapath** %12, align 8
  %86 = icmp ne %struct.datapath* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %16, align 4
  br label %127

90:                                               ; preds = %75
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.datapath*, %struct.datapath** %12, align 8
  %95 = getelementptr inbounds %struct.datapath, %struct.datapath* %94, i32 0, i32 0
  %96 = call %struct.sw_flow* @ovs_flow_tbl_lookup_ufid(i32* %95, %struct.sw_flow_id* %14)
  store %struct.sw_flow* %96, %struct.sw_flow** %11, align 8
  br label %101

97:                                               ; preds = %90
  %98 = load %struct.datapath*, %struct.datapath** %12, align 8
  %99 = getelementptr inbounds %struct.datapath, %struct.datapath* %98, i32 0, i32 0
  %100 = call %struct.sw_flow* @ovs_flow_tbl_lookup_exact(i32* %99, %struct.sw_flow_match* %13)
  store %struct.sw_flow* %100, %struct.sw_flow** %11, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %103 = icmp ne %struct.sw_flow* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @ENOENT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %127

107:                                              ; preds = %101
  %108 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %109 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %110 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %113 = load i32, i32* @OVS_FLOW_CMD_GET, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow* %108, i32 %111, %struct.genl_info* %112, i32 %113, i32 1, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %10, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = call i64 @IS_ERR(%struct.sk_buff* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = call i32 @PTR_ERR(%struct.sk_buff* %120)
  store i32 %121, i32* %16, align 4
  br label %127

122:                                              ; preds = %107
  %123 = call i32 (...) @ovs_unlock()
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = call i32 @genlmsg_reply(%struct.sk_buff* %124, %struct.genl_info* %125)
  store i32 %126, i32* %3, align 4
  br label %130

127:                                              ; preds = %119, %104, %87
  %128 = call i32 (...) @ovs_unlock()
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %122, %73
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @ovs_nla_get_ufid_flags(%struct.nlattr*) #1

declare dso_local i32 @ovs_nla_get_ufid(%struct.sw_flow_id*, %struct.nlattr*, i32) #1

declare dso_local i32 @ovs_match_init(%struct.sw_flow_match*, %struct.sw_flow_key*, i32, i32*) #1

declare dso_local i32 @ovs_nla_get_match(%struct.net*, %struct.sw_flow_match*, %struct.nlattr*, i32*, i32) #1

declare dso_local i32 @OVS_NLERR(i32, i8*) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(%struct.net*, i32) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup_ufid(i32*, %struct.sw_flow_id*) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup_exact(i32*, %struct.sw_flow_match*) #1

declare dso_local %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow*, i32, %struct.genl_info*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
