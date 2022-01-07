; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_next_branch_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_next_branch_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { i32, i32, %struct.branch_info* }
%struct.branch_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.addr_location = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_next_branch_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_next_branch_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.branch_info*, align 8
  %7 = alloca i32, align 4
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %8 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %8, i32 0, i32 2
  %10 = load %struct.branch_info*, %struct.branch_info** %9, align 8
  store %struct.branch_info* %10, %struct.branch_info** %6, align 8
  %11 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %12 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %15 = icmp eq %struct.branch_info* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %22 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %17
  %27 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %35 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %36, i64 %38
  %40 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %44 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %45, i64 %47
  %49 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %53 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %26, %25, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
