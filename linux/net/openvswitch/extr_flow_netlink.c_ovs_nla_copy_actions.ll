; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_copy_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_copy_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sw_flow_actions = type { i32 }

@MAX_ACTIONS_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_copy_actions(%struct.net* %0, %struct.nlattr* %1, %struct.sw_flow_key* %2, %struct.sw_flow_actions** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.sw_flow_key*, align 8
  %10 = alloca %struct.sw_flow_actions**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %9, align 8
  store %struct.sw_flow_actions** %3, %struct.sw_flow_actions*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = load i32, i32* @MAX_ACTIONS_BUFSIZE, align 4
  %16 = call i32 @min(i32 %14, i32 %15)
  %17 = call %struct.sw_flow_actions* @nla_alloc_flow_actions(i32 %16)
  %18 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  store %struct.sw_flow_actions* %17, %struct.sw_flow_actions** %18, align 8
  %19 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %20 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %19, align 8
  %21 = call i64 @IS_ERR(%struct.sw_flow_actions* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %25 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %24, align 8
  %26 = call i32 @PTR_ERR(%struct.sw_flow_actions* %25)
  store i32 %26, i32* %6, align 4
  br label %56

27:                                               ; preds = %5
  %28 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %29 = call i32 @nla_len(%struct.nlattr* %28)
  %30 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %31 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %30, align 8
  %32 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %36 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %37 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %38 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %42 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @__ovs_nla_copy_actions(%struct.net* %33, %struct.nlattr* %34, %struct.sw_flow_key* %35, %struct.sw_flow_actions** %36, i32 %40, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %27
  %51 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %52 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %51, align 8
  %53 = call i32 @ovs_nla_free_flow_actions(%struct.sw_flow_actions* %52)
  br label %54

54:                                               ; preds = %50, %27
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %23
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.sw_flow_actions* @nla_alloc_flow_actions(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @IS_ERR(%struct.sw_flow_actions*) #1

declare dso_local i32 @PTR_ERR(%struct.sw_flow_actions*) #1

declare dso_local i32 @__ovs_nla_copy_actions(%struct.net*, %struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32, i32, i32) #1

declare dso_local i32 @ovs_nla_free_flow_actions(%struct.sw_flow_actions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
