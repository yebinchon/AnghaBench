; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.tracing_map_elt*)* }
%struct.TYPE_4__ = type { i64, i32 }

@tracing_map_cmp_atomic64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map_elt*)* @tracing_map_elt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_map_elt_clear(%struct.tracing_map_elt* %0) #0 {
  %2 = alloca %struct.tracing_map_elt*, align 8
  %3 = alloca i32, align 4
  store %struct.tracing_map_elt* %0, %struct.tracing_map_elt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %7 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %4
  %13 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %14 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @tracing_map_cmp_atomic64, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %12
  %24 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %25 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @atomic64_set(i32* %30, i32 0)
  br label %32

32:                                               ; preds = %23, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %40 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %38, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %47 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @atomic64_set(i32* %51, i32 0)
  %53 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %54 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %64 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %71 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %75, align 8
  %77 = icmp ne i32 (%struct.tracing_map_elt*)* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %80 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %84, align 8
  %86 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %87 = call i32 %85(%struct.tracing_map_elt* %86)
  br label %88

88:                                               ; preds = %78, %69, %62
  ret void
}

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
