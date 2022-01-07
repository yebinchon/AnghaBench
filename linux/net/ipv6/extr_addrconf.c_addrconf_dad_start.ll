; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i64, i32 }

@INET6_IFADDR_STATE_DEAD = common dso_local global i64 0, align 8
@INET6_IFADDR_STATE_PREDAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @addrconf_dad_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_start(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca i32, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INET6_IFADDR_STATE_DEAD, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @INET6_IFADDR_STATE_PREDAD, align 8
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %24 = call i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
