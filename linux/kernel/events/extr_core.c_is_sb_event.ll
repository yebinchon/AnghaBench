; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_is_sb_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_is_sb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, %struct.perf_event_attr }
%struct.perf_event_attr = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @is_sb_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sb_event(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 2
  store %struct.perf_event_attr* %6, %struct.perf_event_attr** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %67

20:                                               ; preds = %12
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %20
  %26 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %35
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55, %50, %45, %40, %35, %30, %25, %20
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %19, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
