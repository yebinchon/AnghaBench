; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_rtsc_y2x.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_rtsc_y2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_sc = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.runtime_sc*, i64)* @rtsc_y2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsc_y2x(%struct.runtime_sc* %0, i64 %1) #0 {
  %3 = alloca %struct.runtime_sc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.runtime_sc* %0, %struct.runtime_sc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %8 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %13 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %76

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %18 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %21 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp sle i64 %16, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %15
  %26 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %27 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %32 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %35 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  store i64 %37, i64* %5, align 8
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %40 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %44 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %48 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @seg_y2x(i64 %46, i32 %49)
  %51 = add nsw i64 %41, %50
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %38, %30
  br label %75

53:                                               ; preds = %15
  %54 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %55 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %58 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %63 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %67 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.runtime_sc*, %struct.runtime_sc** %3, align 8
  %71 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @seg_y2x(i64 %69, i32 %72)
  %74 = add nsw i64 %60, %73
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %53, %52
  br label %76

76:                                               ; preds = %75, %11
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i64 @seg_y2x(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
