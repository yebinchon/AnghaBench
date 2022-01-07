; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_ipv6_good_nh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_ipv6_good_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32, i32 }
%struct.neighbour = type { i32 }

@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*)* @ipv6_good_nh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_good_nh(%struct.fib6_nh* %0) #0 {
  %2 = alloca %struct.fib6_nh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.neighbour*, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %2, align 8
  %5 = load i32, i32* @NUD_REACHABLE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @rcu_read_lock_bh()
  %7 = load %struct.fib6_nh*, %struct.fib6_nh** %2, align 8
  %8 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fib6_nh*, %struct.fib6_nh** %2, align 8
  %11 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %10, i32 0, i32 0
  %12 = call %struct.neighbour* @__ipv6_neigh_lookup_noref_stub(i32 %9, i32* %11)
  store %struct.neighbour* %12, %struct.neighbour** %4, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %14 = icmp ne %struct.neighbour* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = call i32 (...) @rcu_read_unlock_bh()
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NUD_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.neighbour* @__ipv6_neigh_lookup_noref_stub(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
