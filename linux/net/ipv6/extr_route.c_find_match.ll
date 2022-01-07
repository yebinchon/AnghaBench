; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_find_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32, i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IGNORE_LINKSTATE = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_DO_RR = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_HARD = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_nh*, i32, i32, i32, i32*, i32*)* @find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_match(%struct.fib6_nh* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.fib6_nh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fib6_nh* %0, %struct.fib6_nh** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %17 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RTNH_F_DEAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %77

23:                                               ; preds = %6
  %24 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %25 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ip6_ignore_linkdown(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %31 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @RT6_LOOKUP_F_IGNORE_LINKSTATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %77

42:                                               ; preds = %36, %29, %23
  %43 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @rt6_score_route(%struct.fib6_nh* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @RT6_NUD_FAIL_DO_RR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @RT6_NUD_FAIL_HARD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %77

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.fib6_nh*, %struct.fib6_nh** %7, align 8
  %65 = call i32 @rt6_probe(%struct.fib6_nh* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  store i32 1, i32* %14, align 4
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %56, %41, %22
  %78 = load i32, i32* %14, align 4
  ret i32 %78
}

declare dso_local i64 @ip6_ignore_linkdown(i32) #1

declare dso_local i32 @rt6_score_route(%struct.fib6_nh*, i32, i32, i32) #1

declare dso_local i32 @rt6_probe(%struct.fib6_nh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
