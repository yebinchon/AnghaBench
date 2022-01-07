; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_check_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fib6_info = type { i32 }

@RTF_EXPIRES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DST_OBSOLETE_FORCE_CHK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*)* @rt6_check_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_check_expired(%struct.rt6_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  %5 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %6 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.fib6_info* @rcu_dereference(i32 %7)
  store %struct.fib6_info* %8, %struct.fib6_info** %4, align 8
  %9 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %10 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RTF_EXPIRES, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @time_after(i32 %16, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %44

24:                                               ; preds = %15
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %27 = icmp ne %struct.fib6_info* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %30 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DST_OBSOLETE_FORCE_CHK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %37 = call i64 @fib6_check_expired(%struct.fib6_info* %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i1 [ true, %28 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %24
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i64 @fib6_check_expired(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
