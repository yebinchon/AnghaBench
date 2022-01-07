; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_excptn_bucket_set_flushed.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_nh_excptn_bucket_set_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_nh = type { i32 }
%struct.rt6_exception_bucket = type { i32 }

@FIB6_EXCEPTION_BUCKET_FLUSHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_nh*, i32*)* @fib6_nh_excptn_bucket_set_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_nh_excptn_bucket_set_flushed(%struct.fib6_nh* %0, i32* %1) #0 {
  %3 = alloca %struct.fib6_nh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rt6_exception_bucket*, align 8
  %6 = alloca i64, align 8
  store %struct.fib6_nh* %0, %struct.fib6_nh** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %8 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lockdep_is_held(i32* %10)
  %12 = call %struct.rt6_exception_bucket* @rcu_dereference_protected(i32 %9, i32 %11)
  store %struct.rt6_exception_bucket* %12, %struct.rt6_exception_bucket** %5, align 8
  %13 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %14 = ptrtoint %struct.rt6_exception_bucket* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @FIB6_EXCEPTION_BUCKET_FLUSHED, align 8
  %16 = load i64, i64* %6, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.rt6_exception_bucket*
  store %struct.rt6_exception_bucket* %19, %struct.rt6_exception_bucket** %5, align 8
  %20 = load %struct.fib6_nh*, %struct.fib6_nh** %3, align 8
  %21 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %24 = call i32 @rcu_assign_pointer(i32 %22, %struct.rt6_exception_bucket* %23)
  ret void
}

declare dso_local %struct.rt6_exception_bucket* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rt6_exception_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
