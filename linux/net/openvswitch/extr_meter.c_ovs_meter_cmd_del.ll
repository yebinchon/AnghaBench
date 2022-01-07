; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.datapath = type { i32 }
%struct.dp_meter = type { i32 }

@OVS_METER_ATTR_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_METER_CMD_DEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_meter_cmd_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_meter_cmd_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ovs_header*, align 8
  %9 = alloca %struct.ovs_header*, align 8
  %10 = alloca %struct.datapath*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.dp_meter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 1
  %16 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  store %struct.nlattr** %16, %struct.nlattr*** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.ovs_header*, %struct.ovs_header** %18, align 8
  store %struct.ovs_header* %19, %struct.ovs_header** %8, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %21 = load i64, i64* @OVS_METER_ATTR_ID, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %94

28:                                               ; preds = %2
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @OVS_METER_ATTR_ID, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = load i32, i32* @OVS_METER_CMD_DEL, align 4
  %36 = call %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info* %34, i32 %35, %struct.ovs_header** %9)
  store %struct.sk_buff* %36, %struct.sk_buff** %12, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.sk_buff* %41)
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %28
  %44 = call i32 (...) @ovs_lock()
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sock_net(i32 %47)
  %49 = load %struct.ovs_header*, %struct.ovs_header** %8, align 8
  %50 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.datapath* @get_dp(i32 %48, i32 %51)
  store %struct.datapath* %52, %struct.datapath** %10, align 8
  %53 = load %struct.datapath*, %struct.datapath** %10, align 8
  %54 = icmp ne %struct.datapath* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %89

58:                                               ; preds = %43
  %59 = load %struct.datapath*, %struct.datapath** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.dp_meter* @lookup_meter(%struct.datapath* %59, i32 %60)
  store %struct.dp_meter* %61, %struct.dp_meter** %13, align 8
  %62 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %63 = icmp ne %struct.dp_meter* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %66 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_bh(i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %71 = call i32 @ovs_meter_cmd_reply_stats(%struct.sk_buff* %68, i32 %69, %struct.dp_meter* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %75 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %78 = call i32 @detach_meter(%struct.dp_meter* %77)
  br label %79

79:                                               ; preds = %64, %58
  %80 = call i32 (...) @ovs_unlock()
  %81 = load %struct.dp_meter*, %struct.dp_meter** %13, align 8
  %82 = call i32 @ovs_meter_free(%struct.dp_meter* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = load %struct.ovs_header*, %struct.ovs_header** %9, align 8
  %85 = call i32 @genlmsg_end(%struct.sk_buff* %83, %struct.ovs_header* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = call i32 @genlmsg_reply(%struct.sk_buff* %86, %struct.genl_info* %87)
  store i32 %88, i32* %3, align 4
  br label %94

89:                                               ; preds = %55
  %90 = call i32 (...) @ovs_unlock()
  %91 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %92 = call i32 @nlmsg_free(%struct.sk_buff* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %79, %40, %25
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info*, i32, %struct.ovs_header**) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local %struct.dp_meter* @lookup_meter(%struct.datapath*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ovs_meter_cmd_reply_stats(%struct.sk_buff*, i32, %struct.dp_meter*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @detach_meter(%struct.dp_meter*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_meter_free(%struct.dp_meter*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
