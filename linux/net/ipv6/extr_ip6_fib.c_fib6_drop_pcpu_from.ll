; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_drop_pcpu_from.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_drop_pcpu_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, %struct.fib6_nh*, i64 }
%struct.fib6_nh = type { i32 }
%struct.fib6_table = type { i32 }
%struct.fib6_nh_pcpu_arg = type { %struct.fib6_table*, %struct.fib6_info* }

@fib6_nh_drop_pcpu_from = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_info*, %struct.fib6_table*)* @fib6_drop_pcpu_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_drop_pcpu_from(%struct.fib6_info* %0, %struct.fib6_table* %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca %struct.fib6_table*, align 8
  %5 = alloca %struct.fib6_nh_pcpu_arg, align 8
  %6 = alloca %struct.fib6_nh*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %4, align 8
  %7 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %8 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = call i32 (...) @mb()
  %10 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %11 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fib6_nh_pcpu_arg, %struct.fib6_nh_pcpu_arg* %5, i32 0, i32 0
  %16 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  store %struct.fib6_table* %16, %struct.fib6_table** %15, align 8
  %17 = getelementptr inbounds %struct.fib6_nh_pcpu_arg, %struct.fib6_nh_pcpu_arg* %5, i32 0, i32 1
  %18 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  store %struct.fib6_info* %18, %struct.fib6_info** %17, align 8
  %19 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %20 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @fib6_nh_drop_pcpu_from, align 4
  %23 = call i32 @nexthop_for_each_fib6_nh(i64 %21, i32 %22, %struct.fib6_nh_pcpu_arg* %5)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %26 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %25, i32 0, i32 1
  %27 = load %struct.fib6_nh*, %struct.fib6_nh** %26, align 8
  store %struct.fib6_nh* %27, %struct.fib6_nh** %6, align 8
  %28 = load %struct.fib6_nh*, %struct.fib6_nh** %6, align 8
  %29 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %30 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %31 = call i32 @__fib6_drop_pcpu_from(%struct.fib6_nh* %28, %struct.fib6_info* %29, %struct.fib6_table* %30)
  br label %32

32:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @nexthop_for_each_fib6_nh(i64, i32, %struct.fib6_nh_pcpu_arg*) #1

declare dso_local i32 @__fib6_drop_pcpu_from(%struct.fib6_nh*, %struct.fib6_info*, %struct.fib6_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
