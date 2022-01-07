; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_age_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_age_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i64 }
%struct.fib6_gc_args = type { i32 }
%struct.fib6_nh_age_excptn_arg = type { i64, %struct.fib6_gc_args* }

@rt6_nh_age_exceptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_age_exceptions(%struct.fib6_info* %0, %struct.fib6_gc_args* %1, i64 %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_gc_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fib6_nh_age_excptn_arg, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store %struct.fib6_gc_args* %1, %struct.fib6_gc_args** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %9 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fib6_nh_age_excptn_arg, %struct.fib6_nh_age_excptn_arg* %7, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fib6_nh_age_excptn_arg, %struct.fib6_nh_age_excptn_arg* %7, i32 0, i32 1
  %16 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %5, align 8
  store %struct.fib6_gc_args* %16, %struct.fib6_gc_args** %15, align 8
  %17 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %18 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @rt6_nh_age_exceptions, align 4
  %21 = call i32 @nexthop_for_each_fib6_nh(i64 %19, i32 %20, %struct.fib6_nh_age_excptn_arg* %7)
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %24 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @fib6_nh_age_exceptions(i32 %25, %struct.fib6_gc_args* %26, i64 %27)
  br label %29

29:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_nh_age_excptn_arg*) #1

declare dso_local i32 @fib6_nh_age_exceptions(i32, %struct.fib6_gc_args*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
