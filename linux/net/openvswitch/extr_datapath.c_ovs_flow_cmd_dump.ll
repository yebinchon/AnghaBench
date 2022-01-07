; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i8**, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ovs_header = type { i32 }
%struct.table_instance = type { i32 }
%struct.datapath = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sw_flow = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nlattr = type { i32 }

@__OVS_FLOW_ATTR_MAX = common dso_local global i32 0, align 4
@dp_flow_genl_family = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_MAX = common dso_local global i32 0, align 4
@flow_policy = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_UFID_FLAGS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ovs_flow_cmd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ovs_header*, align 8
  %9 = alloca %struct.table_instance*, align 8
  %10 = alloca %struct.datapath*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sw_flow*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_7__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %18 = load i32, i32* @__OVS_FLOW_ATTR_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @nlmsg_data(%struct.TYPE_6__* %24)
  %26 = call %struct.ovs_header* @genlmsg_data(i32 %25)
  store %struct.ovs_header* %26, %struct.ovs_header** %8, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* @OVS_FLOW_ATTR_MAX, align 4
  %31 = load i32, i32* @flow_policy, align 4
  %32 = call i32 @genlmsg_parse_deprecated(%struct.TYPE_6__* %29, i32* @dp_flow_genl_family, %struct.nlattr** %21, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

37:                                               ; preds = %2
  %38 = load i64, i64* @OVS_FLOW_ATTR_UFID_FLAGS, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i8* @ovs_nla_get_ufid_flags(%struct.nlattr* %40)
  store i8* %41, i8** %11, align 8
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sock_net(i32 %45)
  %47 = load %struct.ovs_header*, %struct.ovs_header** %8, align 8
  %48 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.datapath* @get_dp_rcu(i32 %46, i32 %49)
  store %struct.datapath* %50, %struct.datapath** %10, align 8
  %51 = load %struct.datapath*, %struct.datapath** %10, align 8
  %52 = icmp ne %struct.datapath* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %37
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

57:                                               ; preds = %37
  %58 = load %struct.datapath*, %struct.datapath** %10, align 8
  %59 = getelementptr inbounds %struct.datapath, %struct.datapath* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.table_instance* @rcu_dereference(i32 %61)
  store %struct.table_instance* %62, %struct.table_instance** %9, align 8
  br label %63

63:                                               ; preds = %103, %57
  %64 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %65 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %15, align 8
  %69 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %70 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %16, align 8
  %74 = load %struct.table_instance*, %struct.table_instance** %9, align 8
  %75 = call %struct.sw_flow* @ovs_flow_tbl_dump_next(%struct.table_instance* %74, i8** %15, i8** %16)
  store %struct.sw_flow* %75, %struct.sw_flow** %14, align 8
  %76 = load %struct.sw_flow*, %struct.sw_flow** %14, align 8
  %77 = icmp ne %struct.sw_flow* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %63
  br label %114

79:                                               ; preds = %63
  %80 = load %struct.sw_flow*, %struct.sw_flow** %14, align 8
  %81 = load %struct.ovs_header*, %struct.ovs_header** %8, align 8
  %82 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %86 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @NETLINK_CB(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NLM_F_MULTI, align 4
  %98 = load i32, i32* @OVS_FLOW_CMD_GET, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = call i64 @ovs_flow_cmd_fill_info(%struct.sw_flow* %80, i32 %83, %struct.sk_buff* %84, i32 %91, i32 %96, i32 %97, i32 %98, i8* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %79
  br label %114

103:                                              ; preds = %79
  %104 = load i8*, i8** %15, align 8
  %105 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %106 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %104, i8** %108, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %111 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* %109, i8** %113, align 8
  br label %63

114:                                              ; preds = %102, %78
  %115 = call i32 (...) @rcu_read_unlock()
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %114, %53, %35
  %120 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ovs_header* @genlmsg_data(i32) #2

declare dso_local i32 @nlmsg_data(%struct.TYPE_6__*) #2

declare dso_local i32 @genlmsg_parse_deprecated(%struct.TYPE_6__*, i32*, %struct.nlattr**, i32, i32, i32*) #2

declare dso_local i8* @ovs_nla_get_ufid_flags(%struct.nlattr*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.datapath* @get_dp_rcu(i32, i32) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.table_instance* @rcu_dereference(i32) #2

declare dso_local %struct.sw_flow* @ovs_flow_tbl_dump_next(%struct.table_instance*, i8**, i8**) #2

declare dso_local i64 @ovs_flow_cmd_fill_info(%struct.sw_flow*, i32, %struct.sk_buff*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @NETLINK_CB(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
