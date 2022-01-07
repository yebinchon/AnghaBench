; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.h_annotation__cycles_width.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.h_annotation__cycles_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ANNOTATION__IPC_WIDTH = common dso_local global i32 0, align 4
@ANNOTATION__MINMAX_CYCLES_WIDTH = common dso_local global i32 0, align 4
@ANNOTATION__CYCLES_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotation*)* @annotation__cycles_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotation__cycles_width(%struct.annotation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.annotation*, align 8
  store %struct.annotation* %0, %struct.annotation** %3, align 8
  %4 = load %struct.annotation*, %struct.annotation** %3, align 8
  %5 = getelementptr inbounds %struct.annotation, %struct.annotation* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.annotation*, %struct.annotation** %3, align 8
  %10 = getelementptr inbounds %struct.annotation, %struct.annotation* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32, i32* @ANNOTATION__IPC_WIDTH, align 4
  %17 = load i32, i32* @ANNOTATION__MINMAX_CYCLES_WIDTH, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %8, %1
  %20 = load %struct.annotation*, %struct.annotation** %3, align 8
  %21 = getelementptr inbounds %struct.annotation, %struct.annotation* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @ANNOTATION__IPC_WIDTH, align 4
  %26 = load i32, i32* @ANNOTATION__CYCLES_WIDTH, align 4
  %27 = add nsw i32 %25, %26
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
