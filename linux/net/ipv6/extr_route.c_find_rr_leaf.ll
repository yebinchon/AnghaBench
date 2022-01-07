; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_find_rr_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_find_rr_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32 }
%struct.fib6_info = type { i32 }
%struct.fib6_result = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_node*, %struct.fib6_info*, %struct.fib6_info*, i32, i32, i32*, %struct.fib6_result*)* @find_rr_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_rr_leaf(%struct.fib6_node* %0, %struct.fib6_info* %1, %struct.fib6_info* %2, i32 %3, i32 %4, i32* %5, %struct.fib6_result* %6) #0 {
  %8 = alloca %struct.fib6_node*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  %10 = alloca %struct.fib6_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.fib6_result*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fib6_info*, align 8
  %17 = alloca i32, align 4
  store %struct.fib6_node* %0, %struct.fib6_node** %8, align 8
  store %struct.fib6_info* %1, %struct.fib6_info** %9, align 8
  store %struct.fib6_info* %2, %struct.fib6_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.fib6_result* %6, %struct.fib6_result** %14, align 8
  %18 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %19 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  store %struct.fib6_info* null, %struct.fib6_info** %16, align 8
  store i32 -1, i32* %17, align 4
  %21 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.fib6_result*, %struct.fib6_result** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @__find_rr_leaf(%struct.fib6_info* %21, %struct.fib6_info* null, i32 %22, %struct.fib6_result* %23, %struct.fib6_info** %16, i32 %24, i32 %25, i32* %26, i32* %17)
  %28 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %29 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.fib6_result*, %struct.fib6_result** %14, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @__find_rr_leaf(%struct.fib6_info* %28, %struct.fib6_info* %29, i32 %30, %struct.fib6_result* %31, %struct.fib6_info** %16, i32 %32, i32 %33, i32* %34, i32* %17)
  %36 = load %struct.fib6_result*, %struct.fib6_result** %14, align 8
  %37 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load %struct.fib6_info*, %struct.fib6_info** %16, align 8
  %42 = icmp ne %struct.fib6_info* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %7
  br label %52

44:                                               ; preds = %40
  %45 = load %struct.fib6_info*, %struct.fib6_info** %16, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.fib6_result*, %struct.fib6_result** %14, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @__find_rr_leaf(%struct.fib6_info* %45, %struct.fib6_info* null, i32 %46, %struct.fib6_result* %47, %struct.fib6_info** null, i32 %48, i32 %49, i32* %50, i32* %17)
  br label %52

52:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @__find_rr_leaf(%struct.fib6_info*, %struct.fib6_info*, i32, %struct.fib6_result*, %struct.fib6_info**, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
