; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_backtrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_backtrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, i32 }
%struct.in6_addr = type { i32 }

@RTN_TL_ROOT = common dso_local global i32 0, align 4
@RTN_RTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.fib6_node*, %struct.in6_addr*)* @fib6_backtrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_backtrack(%struct.fib6_node* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.fib6_node*, align 8
  %4 = alloca %struct.fib6_node*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  store %struct.fib6_node* %0, %struct.fib6_node** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  br label %8

8:                                                ; preds = %2, %44
  %9 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %10 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RTN_TL_ROOT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store %struct.fib6_node* null, %struct.fib6_node** %3, align 8
  br label %45

16:                                               ; preds = %8
  %17 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %18 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fib6_node* @rcu_dereference(i32 %19)
  store %struct.fib6_node* %20, %struct.fib6_node** %6, align 8
  %21 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %22 = call %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node* %21)
  store %struct.fib6_node* %22, %struct.fib6_node** %7, align 8
  %23 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %24 = icmp ne %struct.fib6_node* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %27 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %28 = icmp ne %struct.fib6_node* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %31 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %32 = call %struct.fib6_node* @fib6_node_lookup(%struct.fib6_node* %30, i32* null, %struct.in6_addr* %31)
  store %struct.fib6_node* %32, %struct.fib6_node** %4, align 8
  br label %35

33:                                               ; preds = %25, %16
  %34 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  store %struct.fib6_node* %34, %struct.fib6_node** %4, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %37 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RTN_RTINFO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  store %struct.fib6_node* %43, %struct.fib6_node** %3, align 8
  br label %45

44:                                               ; preds = %35
  br label %8

45:                                               ; preds = %42, %15
  %46 = load %struct.fib6_node*, %struct.fib6_node** %3, align 8
  ret %struct.fib6_node* %46
}

declare dso_local %struct.fib6_node* @rcu_dereference(i32) #1

declare dso_local %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node*) #1

declare dso_local %struct.fib6_node* @fib6_node_lookup(%struct.fib6_node*, i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
