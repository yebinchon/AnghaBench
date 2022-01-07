; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_get_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_get_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.neighbour = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.neighbour*, i32, i32)* @neigh_get_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_get_reply(%struct.net* %0, %struct.neighbour* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.neighbour* %1, %struct.neighbour** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @neigh_nlmsg_size()
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @RTM_NEWNEIGH, align 4
  %26 = call i32 @neigh_fill_info(%struct.sk_buff* %21, %struct.neighbour* %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load %struct.net*, %struct.net** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @rtnl_unicast(%struct.sk_buff* %33, %struct.net* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @neigh_nlmsg_size(...) #1

declare dso_local i32 @neigh_fill_info(%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
