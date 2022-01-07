; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy_walk = type { i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@dump_one_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @xfrm_dump_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_dump_policy(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.xfrm_policy_walk*, align 8
  %7 = alloca %struct.xfrm_dump_info, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.xfrm_policy_walk*
  store %struct.xfrm_policy_walk* %15, %struct.xfrm_policy_walk** %6, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 2
  store %struct.sk_buff* %20, %struct.sk_buff** %21, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @NLM_F_MULTI, align 4
  %29 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = load %struct.xfrm_policy_walk*, %struct.xfrm_policy_walk** %6, align 8
  %32 = load i32, i32* @dump_one_policy, align 4
  %33 = call i32 @xfrm_policy_walk(%struct.net* %30, %struct.xfrm_policy_walk* %31, i32 %32, %struct.xfrm_dump_info* %7)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @xfrm_policy_walk(%struct.net*, %struct.xfrm_policy_walk*, i32, %struct.xfrm_dump_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
