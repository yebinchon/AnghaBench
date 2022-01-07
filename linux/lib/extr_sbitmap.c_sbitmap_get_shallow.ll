; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_get_shallow.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_get_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbitmap_get_shallow(%struct.sbitmap* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sbitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SB_NR_TO_INDEX(%struct.sbitmap* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %73, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %16 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %57, %19
  %21 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %22 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %29 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @min(i32 %35, i64 %36)
  %38 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @SB_NR_TO_BIT(%struct.sbitmap* %38, i32 %39)
  %41 = call i32 @__sbitmap_get_word(i32* %27, i32 %37, i32 %40, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %47 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %45, %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %76

52:                                               ; preds = %20
  %53 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @sbitmap_deferred_clear(%struct.sbitmap* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %20

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %63 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %61, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %68 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp uge i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %13

76:                                               ; preds = %44, %13
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @SB_NR_TO_INDEX(%struct.sbitmap*, i32) #1

declare dso_local i32 @__sbitmap_get_word(i32*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @SB_NR_TO_BIT(%struct.sbitmap*, i32) #1

declare dso_local i64 @sbitmap_deferred_clear(%struct.sbitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
