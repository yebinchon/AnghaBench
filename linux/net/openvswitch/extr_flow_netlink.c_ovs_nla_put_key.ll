; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_put_key(%struct.sw_flow_key* %0, %struct.sw_flow_key* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlattr*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %7, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %13, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %5
  %23 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %24 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call i32 @__ovs_nla_put_key(%struct.sw_flow_key* %23, %struct.sw_flow_key* %24, i32 %25, %struct.sk_buff* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %35 = call i32 @nla_nest_end(%struct.sk_buff* %33, %struct.nlattr* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %30, %19
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @__ovs_nla_put_key(%struct.sw_flow_key*, %struct.sw_flow_key*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
