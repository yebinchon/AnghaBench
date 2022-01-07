; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_perf_hpp__reset_width.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_perf_hpp__reset_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i32, i32 }
%struct.hists = type { i32 }

@PERF_HPP__MAX_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_hpp__reset_width(%struct.perf_hpp_fmt* %0, %struct.hists* %1) #0 {
  %3 = alloca %struct.perf_hpp_fmt*, align 8
  %4 = alloca %struct.hists*, align 8
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %3, align 8
  store %struct.hists* %1, %struct.hists** %4, align 8
  %5 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %6 = call i64 @perf_hpp__is_sort_entry(%struct.perf_hpp_fmt* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %10 = load %struct.hists*, %struct.hists** %4, align 8
  call void @perf_hpp__reset_sort_width(%struct.perf_hpp_fmt* %9, %struct.hists* %10)
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %13 = call i64 @perf_hpp__is_dynamic_entry(%struct.perf_hpp_fmt* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %18 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_HPP__MAX_INDEX, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %25 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 135, label %27
    i32 131, label %27
    i32 130, label %27
    i32 134, label %27
    i32 133, label %30
    i32 132, label %30
    i32 128, label %33
    i32 129, label %33
  ]

27:                                               ; preds = %16, %16, %16, %16
  %28 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %29 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %28, i32 0, i32 1
  store i32 8, i32* %29, align 4
  br label %37

30:                                               ; preds = %16, %16
  %31 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %32 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %31, i32 0, i32 1
  store i32 9, i32* %32, align 4
  br label %37

33:                                               ; preds = %16, %16
  %34 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %3, align 8
  %35 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %34, i32 0, i32 1
  store i32 12, i32* %35, align 4
  br label %37

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %8, %15, %36, %33, %30, %27
  ret void
}

declare dso_local i64 @perf_hpp__is_sort_entry(%struct.perf_hpp_fmt*) #1

declare dso_local void @perf_hpp__reset_sort_width(%struct.perf_hpp_fmt*, %struct.hists*) #1

declare dso_local i64 @perf_hpp__is_dynamic_entry(%struct.perf_hpp_fmt*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
