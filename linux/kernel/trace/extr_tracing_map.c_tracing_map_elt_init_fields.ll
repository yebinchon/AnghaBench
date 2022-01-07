; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_init_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_init_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@tracing_map_cmp_atomic64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map_elt*)* @tracing_map_elt_init_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_map_elt_init_fields(%struct.tracing_map_elt* %0) #0 {
  %2 = alloca %struct.tracing_map_elt*, align 8
  %3 = alloca i32, align 4
  store %struct.tracing_map_elt* %0, %struct.tracing_map_elt** %2, align 8
  %4 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %5 = call i32 @tracing_map_elt_clear(%struct.tracing_map_elt* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %9 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %6
  %15 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %16 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %26 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %24, i64* %31, align 8
  %32 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %33 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @tracing_map_cmp_atomic64, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %14
  %43 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %44 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %54 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 8
  br label %60

60:                                               ; preds = %42, %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %6

64:                                               ; preds = %6
  ret void
}

declare dso_local i32 @tracing_map_elt_clear(%struct.tracing_map_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
