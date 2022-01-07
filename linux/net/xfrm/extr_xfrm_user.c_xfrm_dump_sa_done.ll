; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_dump_sa_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.xfrm_state_walk = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @xfrm_dump_sa_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_dump_sa_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.xfrm_state_walk*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %6 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %7 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = bitcast i64* %9 to %struct.xfrm_state_walk*
  store %struct.xfrm_state_walk* %10, %struct.xfrm_state_walk** %3, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %4, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %5, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %3, align 8
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = call i32 @xfrm_state_walk_done(%struct.xfrm_state_walk* %25, %struct.net* %26)
  br label %28

28:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @xfrm_state_walk_done(%struct.xfrm_state_walk*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
