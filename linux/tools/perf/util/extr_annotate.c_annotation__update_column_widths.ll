; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__update_column_widths.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__update_column_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @annotation__update_column_widths(%struct.annotation* %0) #0 {
  %2 = alloca %struct.annotation*, align 8
  store %struct.annotation* %0, %struct.annotation** %2, align 8
  %3 = load %struct.annotation*, %struct.annotation** %2, align 8
  %4 = getelementptr inbounds %struct.annotation, %struct.annotation* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.annotation*, %struct.annotation** %2, align 8
  %11 = getelementptr inbounds %struct.annotation, %struct.annotation* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.annotation*, %struct.annotation** %2, align 8
  %15 = getelementptr inbounds %struct.annotation, %struct.annotation* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.annotation*, %struct.annotation** %2, align 8
  %19 = getelementptr inbounds %struct.annotation, %struct.annotation* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.annotation*, %struct.annotation** %2, align 8
  %23 = getelementptr inbounds %struct.annotation, %struct.annotation* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %9
  %26 = load %struct.annotation*, %struct.annotation** %2, align 8
  %27 = getelementptr inbounds %struct.annotation, %struct.annotation* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.annotation*, %struct.annotation** %2, align 8
  %31 = getelementptr inbounds %struct.annotation, %struct.annotation* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.annotation*, %struct.annotation** %2, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %25
  %40 = load %struct.annotation*, %struct.annotation** %2, align 8
  %41 = getelementptr inbounds %struct.annotation, %struct.annotation* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.annotation*, %struct.annotation** %2, align 8
  %46 = getelementptr inbounds %struct.annotation, %struct.annotation* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %52

52:                                               ; preds = %39, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
