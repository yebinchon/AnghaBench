; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_update_exception.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_update_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32 }
%struct.rt6_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.rt6_exception_bucket = type { i32 }
%struct.rt6_exception = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_nh*, i32, %struct.rt6_info*)* @fib6_nh_update_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_nh_update_exception(%struct.fib6_nh* %0, i32 %1, %struct.rt6_info* %2) #0 {
  %4 = alloca %struct.fib6_nh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.rt6_exception_bucket*, align 8
  %9 = alloca %struct.rt6_exception*, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rt6_info* %2, %struct.rt6_info** %6, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  %10 = load %struct.fib6_nh*, %struct.fib6_nh** %4, align 8
  %11 = call %struct.rt6_exception_bucket* @fib6_nh_get_excptn_bucket(%struct.fib6_nh* %10, i32* null)
  store %struct.rt6_exception_bucket* %11, %struct.rt6_exception_bucket** %8, align 8
  %12 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %13 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %16 = call %struct.rt6_exception* @__rt6_find_exception_rcu(%struct.rt6_exception_bucket** %8, i32* %14, %struct.in6_addr* %15)
  store %struct.rt6_exception* %16, %struct.rt6_exception** %9, align 8
  %17 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %18 = icmp ne %struct.rt6_exception* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %22 = getelementptr inbounds %struct.rt6_exception, %struct.rt6_exception* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.rt6_exception_bucket* @fib6_nh_get_excptn_bucket(%struct.fib6_nh*, i32*) #1

declare dso_local %struct.rt6_exception* @__rt6_find_exception_rcu(%struct.rt6_exception_bucket**, i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
