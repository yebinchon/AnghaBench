; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_cache_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_cache_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_common = type { i32, i32 }
%struct.rtable = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_nh_common*, %struct.rtable*)* @rt_cache_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_cache_route(%struct.fib_nh_common* %0, %struct.rtable* %1) #0 {
  %3 = alloca %struct.fib_nh_common*, align 8
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.rtable**, align 8
  %8 = alloca i32, align 4
  store %struct.fib_nh_common* %0, %struct.fib_nh_common** %3, align 8
  store %struct.rtable* %1, %struct.rtable** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.rtable*, %struct.rtable** %4, align 8
  %10 = call i64 @rt_is_input_route(%struct.rtable* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.fib_nh_common*, %struct.fib_nh_common** %3, align 8
  %14 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to %struct.rtable**
  store %struct.rtable** %15, %struct.rtable*** %7, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.fib_nh_common*, %struct.fib_nh_common** %3, align 8
  %18 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @raw_cpu_ptr(i32 %19)
  %21 = inttoptr i64 %20 to %struct.rtable**
  store %struct.rtable** %21, %struct.rtable*** %7, align 8
  br label %22

22:                                               ; preds = %16, %12
  %23 = load %struct.rtable**, %struct.rtable*** %7, align 8
  %24 = load %struct.rtable*, %struct.rtable** %23, align 8
  store %struct.rtable* %24, %struct.rtable** %5, align 8
  %25 = load %struct.rtable*, %struct.rtable** %4, align 8
  %26 = getelementptr inbounds %struct.rtable, %struct.rtable* %25, i32 0, i32 0
  %27 = call i32 @dst_hold(i32* %26)
  %28 = load %struct.rtable**, %struct.rtable*** %7, align 8
  %29 = load %struct.rtable*, %struct.rtable** %5, align 8
  %30 = load %struct.rtable*, %struct.rtable** %4, align 8
  %31 = call %struct.rtable* @cmpxchg(%struct.rtable** %28, %struct.rtable* %29, %struct.rtable* %30)
  store %struct.rtable* %31, %struct.rtable** %6, align 8
  %32 = load %struct.rtable*, %struct.rtable** %6, align 8
  %33 = load %struct.rtable*, %struct.rtable** %5, align 8
  %34 = icmp eq %struct.rtable* %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load %struct.rtable*, %struct.rtable** %5, align 8
  %37 = icmp ne %struct.rtable* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.rtable*, %struct.rtable** %5, align 8
  %40 = call i32 @rt_add_uncached_list(%struct.rtable* %39)
  %41 = load %struct.rtable*, %struct.rtable** %5, align 8
  %42 = getelementptr inbounds %struct.rtable, %struct.rtable* %41, i32 0, i32 0
  %43 = call i32 @dst_release(i32* %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %49

45:                                               ; preds = %22
  %46 = load %struct.rtable*, %struct.rtable** %4, align 8
  %47 = getelementptr inbounds %struct.rtable, %struct.rtable* %46, i32 0, i32 0
  %48 = call i32 @dst_release(i32* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i64 @rt_is_input_route(%struct.rtable*) #1

declare dso_local i64 @raw_cpu_ptr(i32) #1

declare dso_local i32 @dst_hold(i32*) #1

declare dso_local %struct.rtable* @cmpxchg(%struct.rtable**, %struct.rtable*, %struct.rtable*) #1

declare dso_local i32 @rt_add_uncached_list(%struct.rtable*) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
