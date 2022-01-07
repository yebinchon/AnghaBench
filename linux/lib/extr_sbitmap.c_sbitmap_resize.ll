; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_resize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_resize(%struct.sbitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.sbitmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %8 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = shl i32 1, %9
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %14 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sbitmap_deferred_clear(%struct.sbitmap* %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %27 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %29 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DIV_ROUND_UP(i32 %30, i32 %31)
  %33 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %34 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %64, %24
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %38 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @min(i32 %42, i32 %43)
  %45 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %46 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %44, i64* %51, align 8
  %52 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %53 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %41
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %35

67:                                               ; preds = %35
  ret void
}

declare dso_local i32 @sbitmap_deferred_clear(%struct.sbitmap*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
