; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_get_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_get_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.pneigh_entry = type { i32 }
%struct.neigh_table = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.pneigh_entry*, i32, i32, %struct.neigh_table*)* @pneigh_get_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pneigh_get_reply(%struct.net* %0, %struct.pneigh_entry* %1, i32 %2, i32 %3, %struct.neigh_table* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.pneigh_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.neigh_table*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.pneigh_entry* %1, %struct.pneigh_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.neigh_table* %4, %struct.neigh_table** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @pneigh_nlmsg_size()
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOBUFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = load %struct.pneigh_entry*, %struct.pneigh_entry** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @RTM_NEWNEIGH, align 4
  %28 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %29 = call i32 @pneigh_fill_info(%struct.sk_buff* %23, %struct.pneigh_entry* %24, i32 %25, i32 %26, i32 %27, i32 0, %struct.neigh_table* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = load %struct.net*, %struct.net** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rtnl_unicast(%struct.sk_buff* %36, %struct.net* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @pneigh_nlmsg_size(...) #1

declare dso_local i32 @pneigh_fill_info(%struct.sk_buff*, %struct.pneigh_entry*, i32, i32, i32, i32, %struct.neigh_table*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
