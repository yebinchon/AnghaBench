; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_age.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i32 }
%struct.fib6_gc_args = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"expiring %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, i8*)* @fib6_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_age(%struct.fib6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fib6_gc_args*, align 8
  %7 = alloca i64, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.fib6_gc_args*
  store %struct.fib6_gc_args* %9, %struct.fib6_gc_args** %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %12 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RTF_EXPIRES, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %19 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %25 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @time_after(i64 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %31 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.fib6_info* %30)
  store i32 -1, i32* %3, align 4
  br label %42

32:                                               ; preds = %22
  %33 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %6, align 8
  %34 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %17, %2
  %38 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %39 = load %struct.fib6_gc_args*, %struct.fib6_gc_args** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @rt6_age_exceptions(%struct.fib6_info* %38, %struct.fib6_gc_args* %39, i64 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @RT6_TRACE(i8*, %struct.fib6_info*) #1

declare dso_local i32 @rt6_age_exceptions(%struct.fib6_info*, %struct.fib6_gc_args*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
