; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { %struct.tracing_map_elt*, %struct.tracing_map_elt*, %struct.tracing_map_elt*, %struct.tracing_map_elt*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tracing_map_elt*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map_elt*)* @tracing_map_elt_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_map_elt_free(%struct.tracing_map_elt* %0) #0 {
  %2 = alloca %struct.tracing_map_elt*, align 8
  store %struct.tracing_map_elt* %0, %struct.tracing_map_elt** %2, align 8
  %3 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %4 = icmp ne %struct.tracing_map_elt* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %51

6:                                                ; preds = %1
  %7 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %8 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %15 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %19, align 8
  %21 = icmp ne i32 (%struct.tracing_map_elt*)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %24 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %28, align 8
  %30 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %31 = call i32 %29(%struct.tracing_map_elt* %30)
  br label %32

32:                                               ; preds = %22, %13, %6
  %33 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %34 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %33, i32 0, i32 3
  %35 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %34, align 8
  %36 = call i32 @kfree(%struct.tracing_map_elt* %35)
  %37 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %38 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %37, i32 0, i32 2
  %39 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %38, align 8
  %40 = call i32 @kfree(%struct.tracing_map_elt* %39)
  %41 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %42 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %41, i32 0, i32 1
  %43 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %42, align 8
  %44 = call i32 @kfree(%struct.tracing_map_elt* %43)
  %45 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %46 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %45, i32 0, i32 0
  %47 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %46, align 8
  %48 = call i32 @kfree(%struct.tracing_map_elt* %47)
  %49 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  %50 = call i32 @kfree(%struct.tracing_map_elt* %49)
  br label %51

51:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @kfree(%struct.tracing_map_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
