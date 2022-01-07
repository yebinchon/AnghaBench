; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_clone.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.sw_flow_actions = type { i32 }

@NLA_HDRLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_ACTION_ATTR_CLONE = common dso_local global i32 0, align 4
@OVS_CLONE_ATTR_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32, i32, i32, i32)* @validate_and_copy_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_and_copy_clone(%struct.net* %0, %struct.nlattr* %1, %struct.sw_flow_key* %2, %struct.sw_flow_actions** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.sw_flow_key*, align 8
  %13 = alloca %struct.sw_flow_actions**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.nlattr* %1, %struct.nlattr** %11, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %12, align 8
  store %struct.sw_flow_actions** %3, %struct.sw_flow_actions*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %22 = call i64 @nla_len(%struct.nlattr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %26 = call i64 @nla_len(%struct.nlattr* %25)
  %27 = load i64, i64* @NLA_HDRLEN, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %78

32:                                               ; preds = %24, %8
  %33 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %34 = load i32, i32* @OVS_ACTION_ATTR_CLONE, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %33, i32 %34, i32 %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %9, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %46 = call i32 @actions_may_change_flow(%struct.nlattr* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ true, %41 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %20, align 4
  %52 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %53 = load i32, i32* @OVS_CLONE_ATTR_EXEC, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @ovs_nla_add_action(%struct.sw_flow_actions** %52, i32 %53, i32* %20, i32 4, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %19, align 4
  store i32 %59, i32* %9, align 4
  br label %78

60:                                               ; preds = %49
  %61 = load %struct.net*, %struct.net** %10, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %63 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %64 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @__ovs_nla_copy_actions(%struct.net* %61, %struct.nlattr* %62, %struct.sw_flow_key* %63, %struct.sw_flow_actions** %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %9, align 4
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %75 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %75, i32 %76)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %73, %71, %58, %39, %29
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @add_nested_action_start(%struct.sw_flow_actions**, i32, i32) #1

declare dso_local i32 @actions_may_change_flow(%struct.nlattr*) #1

declare dso_local i32 @ovs_nla_add_action(%struct.sw_flow_actions**, i32, i32*, i32, i32) #1

declare dso_local i32 @__ovs_nla_copy_actions(%struct.net*, %struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32, i32, i32) #1

declare dso_local i32 @add_nested_action_end(%struct.sw_flow_actions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
