; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_route_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_route_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RTM_NEWROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @route_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_dumpit(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @sock_net(i32 %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %52, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 2
  %26 = call %struct.net_device* @phonet_route_get_rcu(%struct.net* %23, i32 %25)
  store %struct.net_device* %26, %struct.net_device** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %52

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 2
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @NETLINK_CB(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %43 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RTM_NEWROUTE, align 4
  %48 = call i64 @fill_route(%struct.sk_buff* %31, %struct.net_device* %32, i32 %34, i32 %41, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %56

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %19

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %55, %50
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %60 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  ret i32 %65
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @phonet_route_get_rcu(%struct.net*, i32) #1

declare dso_local i64 @fill_route(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
