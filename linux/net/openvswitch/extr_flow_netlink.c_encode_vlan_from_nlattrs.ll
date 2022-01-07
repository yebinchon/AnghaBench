; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_encode_vlan_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_encode_vlan_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sw_flow_match = type { i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_VLAN = common dso_local global i64 0, align 8
@OVS_KEY_ATTR_ETHERTYPE = common dso_local global i64 0, align 8
@eth = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_match*, %struct.nlattr**, i32, i32)* @encode_vlan_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_vlan_from_nlattrs(%struct.sw_flow_match* %0, %struct.nlattr** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sw_flow_match*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %12 = load i64, i64* @OVS_KEY_ATTR_VLAN, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %18 = load i64, i64* @OVS_KEY_ATTR_VLAN, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i32 @nla_get_be16(%struct.nlattr* %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %16, %4
  %23 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %24 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @OVS_KEY_ATTR_ETHERTYPE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_be16(%struct.nlattr* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eth, i32 0, i32 1, i32 1), align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eth, i32 0, i32 1, i32 0), align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %47, i32 %48, i32 %49, i32 %50)
  br label %63

52:                                               ; preds = %34
  %53 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eth, i32 0, i32 0, i32 1), align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eth, i32 0, i32 0, i32 0), align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match* %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %41
  ret i32 0
}

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SW_FLOW_KEY_PUT(%struct.sw_flow_match*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
