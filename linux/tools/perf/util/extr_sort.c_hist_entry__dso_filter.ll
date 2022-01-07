; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__dso_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__dso_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dso* }
%struct.dso = type { i32 }

@HIST_FILTER__DSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i32, i8*)* @hist_entry__dso_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__dso_filter(%struct.hist_entry* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dso*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.dso*
  store %struct.dso* %10, %struct.dso** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HIST_FILTER__DSO, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.dso*, %struct.dso** %8, align 8
  %17 = icmp ne %struct.dso* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.dso*, %struct.dso** %29, align 8
  %31 = load %struct.dso*, %struct.dso** %8, align 8
  %32 = icmp ne %struct.dso* %30, %31
  br label %33

33:                                               ; preds = %24, %18
  %34 = phi i1 [ true, %18 ], [ %32, %24 ]
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi i1 [ false, %15 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
