; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_find_unused_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_find_unused_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net*)* @nh_find_unused_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nh_find_unused_id(%struct.net* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %1, %35
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %36

22:                                               ; preds = %9
  %23 = load %struct.net*, %struct.net** %3, align 8
  %24 = load %struct.net*, %struct.net** %3, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nexthop_find_by_id(%struct.net* %23, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.net*, %struct.net** %3, align 8
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %2, align 8
  br label %37

35:                                               ; preds = %22
  br label %9

36:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @nexthop_find_by_id(%struct.net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
