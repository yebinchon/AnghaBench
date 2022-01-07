; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib6_info* @fib6_info_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib6_info*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 8, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, 4
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.fib6_info* @kzalloc(i64 %14, i32 %15)
  store %struct.fib6_info* %16, %struct.fib6_info** %6, align 8
  %17 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %18 = icmp ne %struct.fib6_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.fib6_info* null, %struct.fib6_info** %3, align 8
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %22 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %25 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %24, i32 0, i32 0
  %26 = call i32 @refcount_set(i32* %25, i32 1)
  %27 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  store %struct.fib6_info* %27, %struct.fib6_info** %3, align 8
  br label %28

28:                                               ; preds = %20, %19
  %29 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  ret %struct.fib6_info* %29
}

declare dso_local %struct.fib6_info* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
