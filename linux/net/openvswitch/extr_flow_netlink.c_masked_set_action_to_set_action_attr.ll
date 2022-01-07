; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_masked_set_action_to_set_action_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_masked_set_action_to_set_action_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@OVS_ACTION_ATTR_SET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sk_buff*)* @masked_set_action_to_set_action_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @masked_set_action_to_set_action_attr(%struct.nlattr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = call %struct.nlattr* @nla_data(%struct.nlattr* %9)
  store %struct.nlattr* %10, %struct.nlattr** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %12 = call i32 @nla_len(%struct.nlattr* %11)
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @OVS_ACTION_ATTR_SET, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %7, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %26 = call i32 @nla_type(%struct.nlattr* %25)
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = call %struct.nlattr* @nla_data(%struct.nlattr* %28)
  %30 = call i64 @nla_put(%struct.sk_buff* %24, i32 %26, i64 %27, %struct.nlattr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %38 = call i32 @nla_nest_end(%struct.sk_buff* %36, %struct.nlattr* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %32, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.nlattr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, %struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
