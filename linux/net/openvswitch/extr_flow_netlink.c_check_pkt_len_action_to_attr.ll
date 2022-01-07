; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_check_pkt_len_action_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_check_pkt_len_action_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.check_pkt_len_arg = type { i32 }

@OVS_ACTION_ATTR_CHECK_PKT_LEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_CHECK_PKT_LEN_ATTR_PKT_LEN = common dso_local global i32 0, align 4
@OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL = common dso_local global i32 0, align 4
@OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sk_buff*)* @check_pkt_len_action_to_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pkt_len_action_to_attr(%struct.nlattr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.check_pkt_len_arg*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @OVS_ACTION_ATTR_CHECK_PKT_LEN, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %6, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %25 = call i8* @nla_data(%struct.nlattr* %24)
  %26 = bitcast i8* %25 to %struct.nlattr*
  store %struct.nlattr* %26, %struct.nlattr** %10, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %28 = call i8* @nla_data(%struct.nlattr* %27)
  %29 = bitcast i8* %28 to %struct.check_pkt_len_arg*
  store %struct.check_pkt_len_arg* %29, %struct.check_pkt_len_arg** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, align 4
  %32 = load %struct.check_pkt_len_arg*, %struct.check_pkt_len_arg** %8, align 8
  %33 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u16(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %100

40:                                               ; preds = %23
  %41 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %42 = call %struct.nlattr* @nla_next(%struct.nlattr* %41, i32* %12)
  store %struct.nlattr* %42, %struct.nlattr** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %7, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %100

51:                                               ; preds = %40
  %52 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %53 = call i8* @nla_data(%struct.nlattr* %52)
  %54 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %55 = call i32 @nla_len(%struct.nlattr* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @ovs_nla_put_actions(i8* %53, i32 %55, %struct.sk_buff* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %63 = call i32 @nla_nest_cancel(%struct.sk_buff* %61, %struct.nlattr* %62)
  br label %100

64:                                               ; preds = %51
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %67 = call i32 @nla_nest_end(%struct.sk_buff* %65, %struct.nlattr* %66)
  br label %68

68:                                               ; preds = %64
  %69 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %70 = call %struct.nlattr* @nla_next(%struct.nlattr* %69, i32* %12)
  store %struct.nlattr* %70, %struct.nlattr** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER, align 4
  %73 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %71, i32 %72)
  store %struct.nlattr* %73, %struct.nlattr** %7, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %100

79:                                               ; preds = %68
  %80 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %81 = call i8* @nla_data(%struct.nlattr* %80)
  %82 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %83 = call i32 @nla_len(%struct.nlattr* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @ovs_nla_put_actions(i8* %81, i32 %83, %struct.sk_buff* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %91 = call i32 @nla_nest_cancel(%struct.sk_buff* %89, %struct.nlattr* %90)
  br label %100

92:                                               ; preds = %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %95 = call i32 @nla_nest_end(%struct.sk_buff* %93, %struct.nlattr* %94)
  br label %96

96:                                               ; preds = %92
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %99 = call i32 @nla_nest_end(%struct.sk_buff* %97, %struct.nlattr* %98)
  store i32 0, i32* %3, align 4
  br label %105

100:                                              ; preds = %88, %76, %60, %48, %37
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %103 = call i32 @nla_nest_cancel(%struct.sk_buff* %101, %struct.nlattr* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %96, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @ovs_nla_put_actions(i8*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
