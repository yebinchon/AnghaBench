; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_addr_filter = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_addr_filter*, %struct.file*, i64, i64)* @perf_addr_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_addr_filter_match(%struct.perf_addr_filter* %0, %struct.file* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_addr_filter*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.perf_addr_filter* %0, %struct.perf_addr_filter** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %6, align 8
  %11 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

16:                                               ; preds = %4
  %17 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %6, align 8
  %18 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @d_inode(i32 %20)
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = call i64 @file_inode(%struct.file* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %6, align 8
  %28 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %47

35:                                               ; preds = %26
  %36 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %6, align 8
  %37 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %6, align 8
  %40 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %47

46:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45, %34, %25, %15
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @d_inode(i32) #1

declare dso_local i64 @file_inode(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
