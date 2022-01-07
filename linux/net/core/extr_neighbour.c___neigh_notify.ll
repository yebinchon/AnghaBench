; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, i32, i32, i32)* @__neigh_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__neigh_notify(%struct.neighbour* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %9, align 8
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = call i32 (...) @neigh_nlmsg_size()
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @nlmsg_new(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %48

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @neigh_fill_info(%struct.sk_buff* %25, %struct.neighbour* %26, i32 %27, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  br label %48

42:                                               ; preds = %24
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load %struct.net*, %struct.net** %9, align 8
  %45 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32 @rtnl_notify(%struct.sk_buff* %43, %struct.net* %44, i32 0, i32 %45, i32* null, i32 %46)
  br label %56

48:                                               ; preds = %33, %23
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.net*, %struct.net** %9, align 8
  %53 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @rtnl_set_sk_err(%struct.net* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %51, %48
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @neigh_nlmsg_size(...) #1

declare dso_local i32 @neigh_fill_info(%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
