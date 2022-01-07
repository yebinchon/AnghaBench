; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32, i32 }
%struct.neighbour = type { i32, i32 }

@RT6_NUD_FAIL_HARD = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@RT6_NUD_SUCCEED = common dso_local global i32 0, align 4
@CONFIG_IPV6_ROUTER_PREF = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_DO_RR = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*)* @rt6_check_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_check_neigh(%struct.fib6_nh* %0) #0 {
  %2 = alloca %struct.fib6_nh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.neighbour*, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %2, align 8
  %5 = load i32, i32* @RT6_NUD_FAIL_HARD, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @rcu_read_lock_bh()
  %7 = load %struct.fib6_nh*, %struct.fib6_nh** %2, align 8
  %8 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fib6_nh*, %struct.fib6_nh** %2, align 8
  %11 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %10, i32 0, i32 0
  %12 = call %struct.neighbour* @__ipv6_neigh_lookup_noref(i32 %9, i32* %11)
  store %struct.neighbour* %12, %struct.neighbour** %4, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %14 = icmp ne %struct.neighbour* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 1
  %18 = call i32 @read_lock(i32* %17)
  %19 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NUD_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @RT6_NUD_SUCCEED, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %15
  %28 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 1
  %30 = call i32 @read_unlock(i32* %29)
  br label %41

31:                                               ; preds = %1
  %32 = load i32, i32* @CONFIG_IPV6_ROUTER_PREF, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @RT6_NUD_SUCCEED, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @RT6_NUD_FAIL_DO_RR, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %27
  %42 = call i32 (...) @rcu_read_unlock_bh()
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.neighbour* @__ipv6_neigh_lookup_noref(i32, i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
