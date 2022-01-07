; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_get_excptn_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_get_excptn_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_exception_bucket = type { i32 }
%struct.fib6_nh = type { i32 }

@FIB6_EXCEPTION_BUCKET_FLUSHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_exception_bucket* (%struct.fib6_nh*, i32*)* @fib6_nh_get_excptn_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_exception_bucket* @fib6_nh_get_excptn_bucket(%struct.fib6_nh* %0, i32* %1) #0 {
  %3 = alloca %struct.fib6_nh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rt6_exception_bucket*, align 8
  %6 = alloca i64, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %11 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lockdep_is_held(i32* %13)
  %15 = call %struct.rt6_exception_bucket* @rcu_dereference_protected(i32 %12, i32 %14)
  store %struct.rt6_exception_bucket* %15, %struct.rt6_exception_bucket** %5, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %18 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.rt6_exception_bucket* @rcu_dereference(i32 %19)
  store %struct.rt6_exception_bucket* %20, %struct.rt6_exception_bucket** %5, align 8
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %23 = icmp ne %struct.rt6_exception_bucket* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %26 = ptrtoint %struct.rt6_exception_bucket* %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* @FIB6_EXCEPTION_BUCKET_FLUSHED, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = inttoptr i64 %31 to %struct.rt6_exception_bucket*
  store %struct.rt6_exception_bucket* %32, %struct.rt6_exception_bucket** %5, align 8
  br label %33

33:                                               ; preds = %24, %21
  %34 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  ret %struct.rt6_exception_bucket* %34
}

declare dso_local %struct.rt6_exception_bucket* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.rt6_exception_bucket* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
