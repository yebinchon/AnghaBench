; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_header = type { i32 }

@dp_flow_genl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow*, i32, %struct.sk_buff*, i32, i32, i32, i32, i32)* @ovs_flow_cmd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_fill_info(%struct.sw_flow* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sw_flow*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ovs_header*, align 8
  %20 = alloca i32, align 4
  store %struct.sw_flow* %0, %struct.sw_flow** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %26, i32* @dp_flow_genl_family, i32 %27, i32 %28)
  store %struct.ovs_header* %29, %struct.ovs_header** %19, align 8
  %30 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  %31 = icmp ne %struct.ovs_header* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %100

35:                                               ; preds = %8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  %38 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = call i32 @ovs_nla_put_identifier(%struct.sw_flow* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %95

45:                                               ; preds = %35
  %46 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %47 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %46, i32 0, i32 0
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @should_fill_key(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = call i32 @ovs_nla_put_masked_key(%struct.sw_flow* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %95

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @should_fill_mask(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call i32 @ovs_nla_put_mask(%struct.sw_flow* %64, %struct.sk_buff* %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %95

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = call i32 @ovs_flow_cmd_fill_stats(%struct.sw_flow* %72, %struct.sk_buff* %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %95

78:                                               ; preds = %71
  %79 = load i32, i32* %17, align 4
  %80 = call i64 @should_fill_actions(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @ovs_flow_cmd_fill_actions(%struct.sw_flow* %83, %struct.sk_buff* %84, i32 %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %95

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  %94 = call i32 @genlmsg_end(%struct.sk_buff* %92, %struct.ovs_header* %93)
  store i32 0, i32* %9, align 4
  br label %100

95:                                               ; preds = %89, %77, %69, %57, %44
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  %98 = call i32 @genlmsg_cancel(%struct.sk_buff* %96, %struct.ovs_header* %97)
  %99 = load i32, i32* %20, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %95, %91, %32
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ovs_nla_put_identifier(%struct.sw_flow*, %struct.sk_buff*) #1

declare dso_local i64 @should_fill_key(i32*, i32) #1

declare dso_local i32 @ovs_nla_put_masked_key(%struct.sw_flow*, %struct.sk_buff*) #1

declare dso_local i64 @should_fill_mask(i32) #1

declare dso_local i32 @ovs_nla_put_mask(%struct.sw_flow*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_flow_cmd_fill_stats(%struct.sw_flow*, %struct.sk_buff*) #1

declare dso_local i64 @should_fill_actions(i32) #1

declare dso_local i32 @ovs_flow_cmd_fill_actions(%struct.sw_flow*, %struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, %struct.ovs_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
