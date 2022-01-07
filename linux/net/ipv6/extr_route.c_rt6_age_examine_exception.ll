; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_age_examine_exception.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_age_examine_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_exception_bucket = type { i32 }
%struct.rt6_exception = type { %struct.rt6_info* }
%struct.rt6_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.fib6_gc_args = type { i32, i64 }
%struct.neighbour = type { i32 }

@RTF_EXPIRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"aging clone %p\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"purging expired route %p\0A\00", align 1
@RTF_GATEWAY = common dso_local global i32 0, align 4
@NTF_ROUTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"purging route %p via non-router but gateway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_exception_bucket*, %struct.rt6_exception*, %struct.fib6_gc_args*, i64)* @rt6_age_examine_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_age_examine_exception(%struct.rt6_exception_bucket* %0, %struct.rt6_exception* %1, %struct.fib6_gc_args* %2, i64 %3) #0 {
  %5 = alloca %struct.rt6_exception_bucket*, align 8
  %6 = alloca %struct.rt6_exception*, align 8
  %7 = alloca %struct.fib6_gc_args*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  store %struct.rt6_exception_bucket* %0, %struct.rt6_exception_bucket** %5, align 8
  store %struct.rt6_exception* %1, %struct.rt6_exception** %6, align 8
  store %struct.fib6_gc_args* %2, %struct.fib6_gc_args** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.rt6_exception*, %struct.rt6_exception** %6, align 8
  %13 = getelementptr inbounds %struct.rt6_exception, %struct.rt6_exception* %12, i32 0, i32 0
  %14 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  store %struct.rt6_info* %14, %struct.rt6_info** %9, align 8
  %15 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %16 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RTF_EXPIRES, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %24 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %7, align 8
  %28 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i64 @time_after_eq(i64 %22, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %35 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.rt6_info* %34)
  %36 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %37 = load %struct.rt6_exception*, %struct.rt6_exception** %6, align 8
  %38 = call i32 @rt6_remove_exception(%struct.rt6_exception_bucket* %36, %struct.rt6_exception* %37)
  br label %93

39:                                               ; preds = %21
  br label %55

40:                                               ; preds = %4
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %43 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @time_after(i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %50 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.rt6_info* %49)
  %51 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %52 = load %struct.rt6_exception*, %struct.rt6_exception** %6, align 8
  %53 = call i32 @rt6_remove_exception(%struct.rt6_exception_bucket* %51, %struct.rt6_exception* %52)
  br label %93

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %57 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RTF_GATEWAY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  %63 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %64 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 1
  %69 = call %struct.neighbour* @__ipv6_neigh_lookup_noref(i32 %66, i32* %68)
  store %struct.neighbour* %69, %struct.neighbour** %10, align 8
  %70 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %71 = icmp ne %struct.neighbour* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %62
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @NTF_ROUTER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %83 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.rt6_info* %82)
  %84 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %5, align 8
  %85 = load %struct.rt6_exception*, %struct.rt6_exception** %6, align 8
  %86 = call i32 @rt6_remove_exception(%struct.rt6_exception_bucket* %84, %struct.rt6_exception* %85)
  br label %93

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %7, align 8
  %90 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %81, %48, %33
  ret void
}

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @RT6_TRACE(i8*, %struct.rt6_info*) #1

declare dso_local i32 @rt6_remove_exception(%struct.rt6_exception_bucket*, %struct.rt6_exception*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local %struct.neighbour* @__ipv6_neigh_lookup_noref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
