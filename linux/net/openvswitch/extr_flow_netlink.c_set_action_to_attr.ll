; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_set_action_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_set_action_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_tunnel_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { i32, i32, i32 }

@OVS_ACTION_ATTR_SET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sk_buff*)* @set_action_to_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_action_to_attr(%struct.nlattr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ovs_tunnel_info*, align 8
  %11 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %13 = call i8* @nla_data(%struct.nlattr* %12)
  %14 = bitcast i8* %13 to %struct.nlattr*
  store %struct.nlattr* %14, %struct.nlattr** %6, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = call i32 @nla_type(%struct.nlattr* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %58 [
    i32 128, label %18
  ]

18:                                               ; preds = %2
  %19 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %20 = call i8* @nla_data(%struct.nlattr* %19)
  %21 = bitcast i8* %20 to %struct.ovs_tunnel_info*
  store %struct.ovs_tunnel_info* %21, %struct.ovs_tunnel_info** %10, align 8
  %22 = load %struct.ovs_tunnel_info*, %struct.ovs_tunnel_info** %10, align 8
  %23 = getelementptr inbounds %struct.ovs_tunnel_info, %struct.ovs_tunnel_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.ip_tunnel_info* %26, %struct.ip_tunnel_info** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @OVS_ACTION_ATTR_SET, align 4
  %29 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %27, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %8, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %18
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %37, i32 0, i32 2
  %39 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %40 = call i32 @ip_tunnel_info_opts(%struct.ip_tunnel_info* %39)
  %41 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %45 = call i32 @ip_tunnel_info_af(%struct.ip_tunnel_info* %44)
  %46 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %47 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ip_tun_to_nlattr(%struct.sk_buff* %36, i32* %38, i32 %40, i32 %43, i32 %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %35
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %57 = call i32 @nla_nest_end(%struct.sk_buff* %55, %struct.nlattr* %56)
  br label %70

58:                                               ; preds = %2
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32, i32* @OVS_ACTION_ATTR_SET, align 4
  %61 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %62 = call i32 @nla_len(%struct.nlattr* %61)
  %63 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %64 = call i32 @nla_put(%struct.sk_buff* %59, i32 %60, i32 %62, %struct.nlattr* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %54
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %66, %52, %32
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_tun_to_nlattr(%struct.sk_buff*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ip_tunnel_info_opts(%struct.ip_tunnel_info*) #1

declare dso_local i32 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
