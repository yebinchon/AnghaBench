; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_add_tap.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_add_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_tap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.netlink_tap_net = type { i32, i32 }

@netlink_tap_net_id = common dso_local global i32 0, align 4
@ARPHRD_NETLINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlink_add_tap(%struct.netlink_tap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_tap*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.netlink_tap_net*, align 8
  store %struct.netlink_tap* %0, %struct.netlink_tap** %3, align 8
  %6 = load %struct.netlink_tap*, %struct.netlink_tap** %3, align 8
  %7 = getelementptr inbounds %struct.netlink_tap, %struct.netlink_tap* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.net* @dev_net(%struct.TYPE_2__* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load i32, i32* @netlink_tap_net_id, align 4
  %12 = call %struct.netlink_tap_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.netlink_tap_net* %12, %struct.netlink_tap_net** %5, align 8
  %13 = load %struct.netlink_tap*, %struct.netlink_tap** %3, align 8
  %14 = getelementptr inbounds %struct.netlink_tap, %struct.netlink_tap* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_NETLINK, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.netlink_tap_net*, %struct.netlink_tap_net** %5, align 8
  %28 = getelementptr inbounds %struct.netlink_tap_net, %struct.netlink_tap_net* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.netlink_tap*, %struct.netlink_tap** %3, align 8
  %31 = getelementptr inbounds %struct.netlink_tap, %struct.netlink_tap* %30, i32 0, i32 1
  %32 = load %struct.netlink_tap_net*, %struct.netlink_tap_net** %5, align 8
  %33 = getelementptr inbounds %struct.netlink_tap_net, %struct.netlink_tap_net* %32, i32 0, i32 1
  %34 = call i32 @list_add_rcu(i32* %31, i32* %33)
  %35 = load %struct.netlink_tap_net*, %struct.netlink_tap_net** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_tap_net, %struct.netlink_tap_net* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.netlink_tap*, %struct.netlink_tap** %3, align 8
  %39 = getelementptr inbounds %struct.netlink_tap, %struct.netlink_tap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @__module_get(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local %struct.netlink_tap_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
