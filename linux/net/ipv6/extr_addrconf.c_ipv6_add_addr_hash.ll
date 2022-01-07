; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_add_addr_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_add_addr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.inet6_ifaddr = type { i32, i32 }

@addrconf_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ipv6_add_addr: already assigned\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@inet6_addr_lst = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.inet6_ifaddr*)* @ipv6_add_addr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_add_addr_hash(%struct.net_device* %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @dev_net(%struct.net_device* %7)
  %9 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %10 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %9, i32 0, i32 1
  %11 = call i32 @inet6_addr_hash(i32 %8, i32* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = call i32 @spin_lock(i32* @addrconf_hash_lock)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @ipv6_chk_same_addr(i32 %14, i32* %16, %struct.net_device* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netdev_dbg(%struct.net_device* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 0
  %29 = load i32*, i32** @inet6_addr_lst, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @hlist_add_head_rcu(i32* %28, i32* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = call i32 @spin_unlock(i32* @addrconf_hash_lock)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @inet6_addr_hash(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ipv6_chk_same_addr(i32, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
