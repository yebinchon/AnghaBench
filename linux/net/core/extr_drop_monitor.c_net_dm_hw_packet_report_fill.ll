; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_report_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_report_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.net_dm_hw_metadata = type { %struct.net_device*, i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.nlattr = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.net_dm_hw_metadata* }

@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_PACKET_ALERT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NET_DM_ATTR_ORIGIN = common dso_local global i32 0, align 4
@NET_DM_ORIGIN_HW = common dso_local global i32 0, align 4
@NET_DM_ATTR_HW_TRAP_GROUP_NAME = common dso_local global i32 0, align 4
@NET_DM_ATTR_HW_TRAP_NAME = common dso_local global i32 0, align 4
@NET_DM_ATTR_TIMESTAMP = common dso_local global i32 0, align 4
@NET_DM_ATTR_PAD = common dso_local global i32 0, align 4
@NET_DM_ATTR_ORIG_LEN = common dso_local global i32 0, align 4
@NET_DM_ATTR_PROTO = common dso_local global i32 0, align 4
@NET_DM_ATTR_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sk_buff*, i64)* @net_dm_hw_packet_report_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_hw_packet_report_fill(%struct.sk_buff* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_dm_hw_metadata*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_2__* @NET_DM_SKB_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %15, align 8
  store %struct.net_dm_hw_metadata* %16, %struct.net_dm_hw_metadata** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @NET_DM_CMD_PACKET_ALERT, align 4
  %19 = call i8* @genlmsg_put(%struct.sk_buff* %17, i32 0, i32 0, i32* @net_drop_monitor_family, i32 0, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @NET_DM_ATTR_ORIGIN, align 4
  %28 = load i32, i32* @NET_DM_ORIGIN_HW, align 4
  %29 = call i64 @nla_put_u16(%struct.sk_buff* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %129

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @NET_DM_ATTR_HW_TRAP_GROUP_NAME, align 4
  %35 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %8, align 8
  %36 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_string(%struct.sk_buff* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %129

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @NET_DM_ATTR_HW_TRAP_NAME, align 4
  %44 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %8, align 8
  %45 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @nla_put_string(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %129

50:                                               ; preds = %41
  %51 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %8, align 8
  %52 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %51, i32 0, i32 0
  %53 = load %struct.net_device*, %struct.net_device** %52, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %8, align 8
  %57 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %56, i32 0, i32 0
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  store %struct.net_device* %58, %struct.net_device** %11, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %11, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @net_dm_packet_report_in_port_put(%struct.sk_buff* %59, i32 %62, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %129

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* @NET_DM_ATTR_TIMESTAMP, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ktime_to_ns(i32 %76)
  %78 = load i32, i32* @NET_DM_ATTR_PAD, align 4
  %79 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %72, i32 %73, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %129

82:                                               ; preds = %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* @NET_DM_ATTR_ORIG_LEN, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @nla_put_u32(%struct.sk_buff* %83, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %129

91:                                               ; preds = %82
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %125

95:                                               ; preds = %91
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* @NET_DM_ATTR_PROTO, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be16_to_cpu(i32 %100)
  %102 = call i64 @nla_put_u16(%struct.sk_buff* %96, i32 %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %129

105:                                              ; preds = %95
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @nla_total_size(i64 %107)
  %109 = call %struct.nlattr* @skb_put(%struct.sk_buff* %106, i32 %108)
  store %struct.nlattr* %109, %struct.nlattr** %9, align 8
  %110 = load i32, i32* @NET_DM_ATTR_PAYLOAD, align 4
  %111 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %112 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @nla_attr_size(i64 %113)
  %115 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %116 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %119 = call i32 @nla_data(%struct.nlattr* %118)
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @skb_copy_bits(%struct.sk_buff* %117, i32 0, i32 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %105
  br label %129

124:                                              ; preds = %105
  br label %125

125:                                              ; preds = %124, %94
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @genlmsg_end(%struct.sk_buff* %126, i8* %127)
  store i32 0, i32* %4, align 4
  br label %135

129:                                              ; preds = %123, %104, %90, %81, %69, %49, %40, %31
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @genlmsg_cancel(%struct.sk_buff* %130, i8* %131)
  %133 = load i32, i32* @EMSGSIZE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %129, %125, %22
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_2__* @NET_DM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @net_dm_packet_report_in_port_put(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.nlattr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_total_size(i64) #1

declare dso_local i32 @nla_attr_size(i64) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
