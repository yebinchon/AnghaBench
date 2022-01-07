; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_sample_action_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_sample_action_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type opaque
%struct.sk_buff = type { i32 }
%struct.sample_arg = type { i32 }

@OVS_ACTION_ATTR_SAMPLE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_SAMPLE_ATTR_PROBABILITY = common dso_local global i32 0, align 4
@OVS_SAMPLE_ATTR_ACTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sk_buff*)* @sample_action_to_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample_action_to_attr(%struct.nlattr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sample_arg*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nlattr* null, %struct.nlattr** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @OVS_ACTION_ATTR_SAMPLE, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %6, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %25 = call i8* @nla_data(%struct.nlattr* %24)
  %26 = bitcast i8* %25 to %struct.nlattr*
  store %struct.nlattr* %26, %struct.nlattr** %8, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %28 = call i8* @nla_data(%struct.nlattr* %27)
  %29 = bitcast i8* %28 to %struct.sample_arg*
  store %struct.sample_arg* %29, %struct.sample_arg** %11, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %31 = call %struct.nlattr* @nla_next(%struct.nlattr* %30, i32* %10)
  store %struct.nlattr* %31, %struct.nlattr** %12, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @OVS_SAMPLE_ATTR_PROBABILITY, align 4
  %34 = load %struct.sample_arg*, %struct.sample_arg** %11, align 8
  %35 = getelementptr inbounds %struct.sample_arg, %struct.sample_arg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %56

42:                                               ; preds = %23
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @OVS_SAMPLE_ATTR_ACTIONS, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %7, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @ovs_nla_put_actions(%struct.nlattr* %52, i32 %53, %struct.sk_buff* %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %48, %39
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %62 = call i32 @nla_nest_cancel(%struct.sk_buff* %60, %struct.nlattr* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %65 = call i32 @nla_nest_cancel(%struct.sk_buff* %63, %struct.nlattr* %64)
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %69 = call i32 @nla_nest_end(%struct.sk_buff* %67, %struct.nlattr* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %72 = call i32 @nla_nest_end(%struct.sk_buff* %70, %struct.nlattr* %71)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_nla_put_actions(%struct.nlattr*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
