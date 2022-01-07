; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_info_dst_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_info_dst_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i64, i64, i64 }

@DST_NOCOUNT = common dso_local global i16 0, align 2
@DST_NOPOLICY = common dso_local global i16 0, align 2
@DST_HOST = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.fib6_info*)* @fib6_info_dst_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fib6_info_dst_flags(%struct.fib6_info* %0) #0 {
  %2 = alloca %struct.fib6_info*, align 8
  %3 = alloca i16, align 2
  store %struct.fib6_info* %0, %struct.fib6_info** %2, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %5 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i16, i16* @DST_NOCOUNT, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %12, %10
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %3, align 2
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %17 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i16, i16* @DST_NOPOLICY, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %3, align 2
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  %29 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i16, i16* @DST_HOST, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %3, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %3, align 2
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i16, i16* %3, align 2
  ret i16 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
