; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_dump_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_dump_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }

@MAX_BEARERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_dump_monitor(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_nl_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @sock_net(i32 %14)
  store %struct.net* %15, %struct.net** %6, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MAX_BEARERS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 2
  store %struct.sk_buff* %26, %struct.sk_buff** %27, align 8
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @NETLINK_CB(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = call i32 (...) @rtnl_lock()
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %56, %25
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAX_BEARERS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.net*, %struct.net** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @__tipc_nl_add_monitor(%struct.net* %49, %struct.tipc_nl_msg* %8, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %44

59:                                               ; preds = %54, %44
  %60 = call i32 (...) @rtnl_unlock()
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %63 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__tipc_nl_add_monitor(%struct.net*, %struct.tipc_nl_msg*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
