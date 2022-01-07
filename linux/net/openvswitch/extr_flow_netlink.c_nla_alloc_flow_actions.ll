; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_nla_alloc_flow_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_nla_alloc_flow_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_actions = type { i64 }

@MAX_ACTIONS_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sw_flow_actions* (i32)* @nla_alloc_flow_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sw_flow_actions* @nla_alloc_flow_actions(i32 %0) #0 {
  %2 = alloca %struct.sw_flow_actions*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow_actions*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_ACTIONS_BUFSIZE, align 4
  %7 = icmp sgt i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sw_flow_actions* @kmalloc(i32 %13, i32 %14)
  store %struct.sw_flow_actions* %15, %struct.sw_flow_actions** %4, align 8
  %16 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  %17 = icmp ne %struct.sw_flow_actions* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sw_flow_actions* @ERR_PTR(i32 %20)
  store %struct.sw_flow_actions* %21, %struct.sw_flow_actions** %2, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  %24 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  store %struct.sw_flow_actions* %25, %struct.sw_flow_actions** %2, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %2, align 8
  ret %struct.sw_flow_actions* %27
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sw_flow_actions* @kmalloc(i32, i32) #1

declare dso_local %struct.sw_flow_actions* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
