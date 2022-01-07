; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_flush_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_flush_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i64 }

@rt6_nh_flush_exceptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_flush_exceptions(%struct.fib6_info* %0) #0 {
  %2 = alloca %struct.fib6_info*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %2, align 8
  %3 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %4 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %9 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @rt6_nh_flush_exceptions, align 4
  %12 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %13 = call i32 @nexthop_for_each_fib6_nh(i64 %10, i32 %11, %struct.fib6_info* %12)
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %16 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %19 = call i32 @fib6_nh_flush_exceptions(i32 %17, %struct.fib6_info* %18)
  br label %20

20:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_info*) #1

declare dso_local i32 @fib6_nh_flush_exceptions(i32, %struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
