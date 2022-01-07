; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_policy_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_policy_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_policy_walk = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @xfrm_dump_policy_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_dump_policy_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.xfrm_policy_walk*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %5 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %6 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.xfrm_policy_walk*
  store %struct.xfrm_policy_walk* %8, %struct.xfrm_policy_walk** %3, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %4, align 8
  %15 = load %struct.xfrm_policy_walk*, %struct.xfrm_policy_walk** %3, align 8
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call i32 @xfrm_policy_walk_done(%struct.xfrm_policy_walk* %15, %struct.net* %16)
  ret i32 0
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @xfrm_policy_walk_done(%struct.xfrm_policy_walk*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
