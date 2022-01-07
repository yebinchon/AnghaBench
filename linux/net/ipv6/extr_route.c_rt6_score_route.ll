; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_score_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_score_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_HARD = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_REACHABLE = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*, i32, i32, i32)* @rt6_score_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_score_route(%struct.fib6_nh* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib6_nh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fib6_nh* %0, %struct.fib6_nh** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.fib6_nh*, %struct.fib6_nh** %6, align 8
  %16 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %4
  store i32 2, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @RT6_NUD_FAIL_HARD, align 4
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @RTF_NONEXTHOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load %struct.fib6_nh*, %struct.fib6_nh** %6, align 8
  %45 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.fib6_nh*, %struct.fib6_nh** %6, align 8
  %50 = call i32 @rt6_check_neigh(%struct.fib6_nh* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %43, %38, %33
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %53, %31
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @rt6_check_neigh(%struct.fib6_nh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
