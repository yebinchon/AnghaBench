; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.rt6_info = type { %struct.dst_entry }
%struct.fib6_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.rt6_info*, %struct.fib6_info*, i64)* @rt6_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @rt6_check(%struct.rt6_info* %0, %struct.fib6_info* %1, i64 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.rt6_info*, align 8
  %6 = alloca %struct.fib6_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %5, align 8
  store %struct.fib6_info* %1, %struct.fib6_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %10 = icmp ne %struct.fib6_info* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %13 = call i32 @fib6_get_cookie_safe(%struct.fib6_info* %12, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %3
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %28

20:                                               ; preds = %15
  %21 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %22 = call i64 @rt6_check_expired(%struct.rt6_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %28

25:                                               ; preds = %20
  %26 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %27 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %26, i32 0, i32 0
  store %struct.dst_entry* %27, %struct.dst_entry** %4, align 8
  br label %28

28:                                               ; preds = %25, %24, %19
  %29 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %29
}

declare dso_local i32 @fib6_get_cookie_safe(%struct.fib6_info*, i64*) #1

declare dso_local i64 @rt6_check_expired(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
