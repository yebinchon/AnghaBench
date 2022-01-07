; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_branch_counts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_branch_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_branch_counts(%struct.callchain_root* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.callchain_root*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.callchain_root* %0, %struct.callchain_root** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %13, %5
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64*, i64** %8, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i64*, i64** %9, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64*, i64** %10, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64*, i64** %10, align 8
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.callchain_root*, %struct.callchain_root** %6, align 8
  %32 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %31, i32 0, i32 0
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = call i32 @callchain_node_branch_counts_cumul(i32* %32, i64* %33, i64* %34, i64* %35, i64* %36)
  ret i32 %37
}

declare dso_local i32 @callchain_node_branch_counts_cumul(i32*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
