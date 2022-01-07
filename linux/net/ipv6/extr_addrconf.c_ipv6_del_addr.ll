; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_del_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.TYPE_2__*, i32, %struct.inet6_ifaddr*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CLEANUP_PREFIX_RT_NOP = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_DEAD = common dso_local global i32 0, align 4
@addrconf_hash_lock = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@RTM_DELADDR = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@CLEANUP_PREFIX_RT_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @ipv6_del_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_del_addr(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %6 = load i32, i32* @CLEANUP_PREFIX_RT_NOP, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 7
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %12 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 7
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @INET6_IFADDR_STATE_DEAD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %109

24:                                               ; preds = %1
  %25 = call i32 @spin_lock_bh(i32* @addrconf_hash_lock)
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %27 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %26, i32 0, i32 6
  %28 = call i32 @hlist_del_init_rcu(i32* %27)
  %29 = call i32 @spin_unlock_bh(i32* @addrconf_hash_lock)
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %31 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @write_lock_bh(i32* %33)
  %35 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %36 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %24
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %43 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %42, i32 0, i32 5
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %46 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %45, i32 0, i32 4
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %46, align 8
  %48 = icmp ne %struct.inet6_ifaddr* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %51 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %50, i32 0, i32 4
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %51, align 8
  %53 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %52)
  %54 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %55 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %54, i32 0, i32 4
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %55, align 8
  br label %56

56:                                               ; preds = %49, %41
  %57 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %58 = call i32 @__in6_ifa_put(%struct.inet6_ifaddr* %57)
  br label %59

59:                                               ; preds = %56, %24
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %61 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFA_F_PERMANENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %68 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %75 = call i32 @check_cleanup_prefix_route(%struct.inet6_ifaddr* %74, i64* %5)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %66, %59
  %77 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %78 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %77, i32 0, i32 3
  %79 = call i32 @list_del_rcu(i32* %78)
  %80 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %81 = call i32 @__in6_ifa_put(%struct.inet6_ifaddr* %80)
  %82 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %83 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @write_unlock_bh(i32* %85)
  %87 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %88 = call i32 @addrconf_del_dad_work(%struct.inet6_ifaddr* %87)
  %89 = load i32, i32* @RTM_DELADDR, align 4
  %90 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %91 = call i32 @ipv6_ifa_notify(i32 %89, %struct.inet6_ifaddr* %90)
  %92 = load i32, i32* @NETDEV_DOWN, align 4
  %93 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %94 = call i32 @inet6addr_notifier_call_chain(i32 %92, %struct.inet6_ifaddr* %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @CLEANUP_PREFIX_RT_NOP, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %76
  %99 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @CLEANUP_PREFIX_RT_DEL, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @cleanup_prefix_route(%struct.inet6_ifaddr* %99, i64 %100, i32 %104)
  br label %106

106:                                              ; preds = %98, %76
  %107 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %108 = call i32 @rt6_remove_prefsrc(%struct.inet6_ifaddr* %107)
  br label %109

109:                                              ; preds = %106, %23
  %110 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %111 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %110)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @__in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @check_cleanup_prefix_route(%struct.inet6_ifaddr*, i64*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @addrconf_del_dad_work(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @inet6addr_notifier_call_chain(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @cleanup_prefix_route(%struct.inet6_ifaddr*, i64, i32) #1

declare dso_local i32 @rt6_remove_prefsrc(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
