; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }

@OVS_METER_CMD_FEATURES = common dso_local global i32 0, align 4
@OVS_METER_ATTR_MAX_METERS = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@OVS_METER_ATTR_MAX_BANDS = common dso_local global i32 0, align 4
@DP_MAX_BANDS = common dso_local global i32 0, align 4
@OVS_METER_ATTR_BANDS = common dso_local global i32 0, align 4
@OVS_BAND_ATTR_UNSPEC = common dso_local global i32 0, align 4
@OVS_BAND_ATTR_TYPE = common dso_local global i32 0, align 4
@OVS_METER_BAND_TYPE_DROP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_meter_cmd_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_meter_cmd_features(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @OVS_METER_CMD_FEATURES, align 4
  %13 = call %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info* %11, i32 %12, %struct.ovs_header** %7)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i64 @IS_ERR(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.sk_buff* %18)
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* @OVS_METER_ATTR_MAX_METERS, align 4
  %23 = load i32, i32* @U32_MAX, align 4
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @OVS_METER_ATTR_MAX_BANDS, align 4
  %29 = load i32, i32* @DP_MAX_BANDS, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  br label %67

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @OVS_METER_ATTR_BANDS, align 4
  %36 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %34, i32 %35)
  store %struct.nlattr* %36, %struct.nlattr** %8, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %67

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @OVS_BAND_ATTR_UNSPEC, align 4
  %43 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %41, i32 %42)
  store %struct.nlattr* %43, %struct.nlattr** %9, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %67

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @OVS_BAND_ATTR_TYPE, align 4
  %50 = load i32, i32* @OVS_METER_BAND_TYPE_DROP, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %67

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %57 = call i32 @nla_nest_end(%struct.sk_buff* %55, %struct.nlattr* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %60 = call i32 @nla_nest_end(%struct.sk_buff* %58, %struct.nlattr* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %63 = call i32 @genlmsg_end(%struct.sk_buff* %61, %struct.ovs_header* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = call i32 @genlmsg_reply(%struct.sk_buff* %64, %struct.genl_info* %65)
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %53, %46, %39, %32
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @nlmsg_free(%struct.sk_buff* %68)
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %54, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.sk_buff* @ovs_meter_cmd_reply_start(%struct.genl_info*, i32, %struct.ovs_header**) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
