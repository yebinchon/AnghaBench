; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_data2host8.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_data2host8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tep_data2host8(%struct.tep_handle* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %8 = icmp ne %struct.tep_handle* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %11 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %14 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9, %2
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %3, align 8
  br label %52

19:                                               ; preds = %9
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 255
  %22 = shl i64 %21, 56
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 65280
  %25 = shl i64 %24, 40
  %26 = or i64 %22, %25
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, 16711680
  %29 = shl i64 %28, 24
  %30 = or i64 %26, %29
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %31, 4278190080
  %33 = shl i64 %32, 8
  %34 = or i64 %30, %33
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, 1095216660480
  %37 = lshr i64 %36, 8
  %38 = or i64 %34, %37
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 280375465082880
  %41 = lshr i64 %40, 24
  %42 = or i64 %38, %41
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 71776119061217280
  %45 = lshr i64 %44, 40
  %46 = or i64 %42, %45
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, -72057594037927936
  %49 = lshr i64 %48, 56
  %50 = or i64 %46, %49
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %19, %17
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
