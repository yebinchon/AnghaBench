; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_nsh_key_to_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_nsh_key_to_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovs_key_nsh = type { %struct.TYPE_2__*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_NSH = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_NSH_KEY_ATTR_BASE = common dso_local global i32 0, align 4
@NSH_M_TYPE1 = common dso_local global i64 0, align 8
@OVS_NSH_KEY_ATTR_MD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovs_key_nsh*, i32, %struct.sk_buff*)* @nsh_key_to_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsh_key_to_nlattr(%struct.ovs_key_nsh* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ovs_key_nsh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.ovs_key_nsh* %0, %struct.ovs_key_nsh** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = load i32, i32* @OVS_KEY_ATTR_NSH, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* @OVS_NSH_KEY_ATTR_BASE, align 4
  %20 = load %struct.ovs_key_nsh*, %struct.ovs_key_nsh** %5, align 8
  %21 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %20, i32 0, i32 1
  %22 = call i64 @nla_put(%struct.sk_buff* %18, i32 %19, i32 8, %struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %49

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.ovs_key_nsh*, %struct.ovs_key_nsh** %5, align 8
  %30 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NSH_M_TYPE1, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28, %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* @OVS_NSH_KEY_ATTR_MD1, align 4
  %38 = load %struct.ovs_key_nsh*, %struct.ovs_key_nsh** %5, align 8
  %39 = getelementptr inbounds %struct.ovs_key_nsh, %struct.ovs_key_nsh* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i64 @nla_put(%struct.sk_buff* %36, i32 %37, i32 8, %struct.TYPE_2__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %49

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %48 = call i32 @nla_nest_end(%struct.sk_buff* %46, %struct.nlattr* %47)
  store i32 0, i32* %4, align 4
  br label %52

49:                                               ; preds = %43, %24
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %45, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
