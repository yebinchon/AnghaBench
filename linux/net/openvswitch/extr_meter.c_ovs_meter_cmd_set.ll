; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.genl_info = type { %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.dp_meter = type { i32, i64, i32 }
%struct.datapath = type { i32 }

@OVS_METER_ATTR_ID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@OVS_METER_CMD_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_meter_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_meter_cmd_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.dp_meter*, align 8
  %8 = alloca %struct.dp_meter*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ovs_header*, align 8
  %11 = alloca %struct.ovs_header*, align 8
  %12 = alloca %struct.datapath*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  store %struct.nlattr** %18, %struct.nlattr*** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  store %struct.ovs_header* %21, %struct.ovs_header** %11, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %23 = load i64, i64* @OVS_METER_ATTR_ID, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %2
  %31 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %32 = call %struct.sk_buff* @dp_meter_create(%struct.nlattr** %31)
  %33 = bitcast %struct.sk_buff* %32 to %struct.dp_meter*
  store %struct.dp_meter* %33, %struct.dp_meter** %7, align 8
  %34 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %35 = bitcast %struct.dp_meter* %34 to %struct.sk_buff*
  %36 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %40 = bitcast %struct.dp_meter* %39 to %struct.sk_buff*
  %41 = call i32 @PTR_ERR(%struct.sk_buff* %40)
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %30
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = load i32, i32* @OVS_METER_CMD_SET, align 4
  %45 = call %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info* %43, i32 %44, %struct.ovs_header** %10)
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = call i64 @IS_ERR(%struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.sk_buff* %50)
  store i32 %51, i32* %13, align 4
  br label %127

52:                                               ; preds = %42
  %53 = call i32 (...) @ovs_lock()
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sock_net(i32 %56)
  %58 = load %struct.ovs_header*, %struct.ovs_header** %11, align 8
  %59 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.datapath* @get_dp(i32 %57, i32 %60)
  store %struct.datapath* %61, %struct.datapath** %12, align 8
  %62 = load %struct.datapath*, %struct.datapath** %12, align 8
  %63 = icmp ne %struct.datapath* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %123

67:                                               ; preds = %52
  %68 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %69 = load i64, i64* @OVS_METER_ATTR_ID, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u32(%struct.nlattr* %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.datapath*, %struct.datapath** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.sk_buff* @lookup_meter(%struct.datapath* %73, i32 %74)
  %76 = bitcast %struct.sk_buff* %75 to %struct.dp_meter*
  store %struct.dp_meter* %76, %struct.dp_meter** %8, align 8
  %77 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %78 = bitcast %struct.dp_meter* %77 to %struct.sk_buff*
  %79 = call i32 @detach_meter(%struct.sk_buff* %78)
  %80 = load %struct.datapath*, %struct.datapath** %12, align 8
  %81 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %82 = bitcast %struct.dp_meter* %81 to %struct.sk_buff*
  %83 = call i32 @attach_meter(%struct.datapath* %80, %struct.sk_buff* %82)
  %84 = call i32 (...) @ovs_unlock()
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load i64, i64* @OVS_METER_ATTR_ID, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @nla_put_u32(%struct.sk_buff* %85, i64 %86, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %92 = icmp ne %struct.dp_meter* %91, null
  br i1 %92, label %93, label %116

93:                                               ; preds = %67
  %94 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %95 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_bh(i32* %95)
  %97 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %98 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %105 = bitcast %struct.dp_meter* %104 to %struct.sk_buff*
  %106 = call i32 @ovs_meter_cmd_reply_stats(%struct.sk_buff* %102, i32 %103, %struct.sk_buff* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @WARN_ON(i32 %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %111 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock_bh(i32* %111)
  %113 = load %struct.dp_meter*, %struct.dp_meter** %8, align 8
  %114 = bitcast %struct.dp_meter* %113 to %struct.sk_buff*
  %115 = call i32 @ovs_meter_free(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %109, %67
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = load %struct.ovs_header*, %struct.ovs_header** %10, align 8
  %119 = call i32 @genlmsg_end(%struct.sk_buff* %117, %struct.ovs_header* %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = call i32 @genlmsg_reply(%struct.sk_buff* %120, %struct.genl_info* %121)
  store i32 %122, i32* %3, align 4
  br label %132

123:                                              ; preds = %64
  %124 = call i32 (...) @ovs_unlock()
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = call i32 @nlmsg_free(%struct.sk_buff* %125)
  br label %127

127:                                              ; preds = %123, %49
  %128 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %129 = bitcast %struct.dp_meter* %128 to %struct.sk_buff*
  %130 = call i32 @kfree(%struct.sk_buff* %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %116, %38, %27
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.sk_buff* @dp_meter_create(%struct.nlattr**) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info*, i32, %struct.ovs_header**) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @lookup_meter(%struct.datapath*, i32) #1

declare dso_local i32 @detach_meter(%struct.sk_buff*) #1

declare dso_local i32 @attach_meter(%struct.datapath*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ovs_meter_cmd_reply_stats(%struct.sk_buff*, i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ovs_meter_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
