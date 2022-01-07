; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_domain_dirty_limits.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_domain_dirty_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dirty_throttle_control = type { i64, i64, i64 }

@vm_dirty_bytes = common dso_local global i64 0, align 8
@dirty_background_bytes = common dso_local global i64 0, align 8
@vm_dirty_ratio = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dirty_background_ratio = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PF_LESS_THROTTLE = common dso_local global i32 0, align 4
@global_wb_domain = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*)* @domain_dirty_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_dirty_limits(%struct.dirty_throttle_control* %0) #0 {
  %2 = alloca %struct.dirty_throttle_control*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dirty_throttle_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %2, align 8
  %13 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %14 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %17 = call %struct.dirty_throttle_control* @mdtc_gdtc(%struct.dirty_throttle_control* %16)
  store %struct.dirty_throttle_control* %17, %struct.dirty_throttle_control** %4, align 8
  %18 = load i64, i64* @vm_dirty_bytes, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @dirty_background_bytes, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @vm_dirty_ratio, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 100
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @dirty_background_ratio, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 100
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %31 = icmp ne %struct.dirty_throttle_control* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %1
  %33 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %34 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %12, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @DIV_ROUND_UP(i64 %39, i32 %41)
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i64 @min(i64 %42, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @DIV_ROUND_UP(i64 %49, i32 %51)
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i64 @min(i64 %52, i32 %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %48, %45
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i64 @DIV_ROUND_UP(i64 %60, i32 %61)
  store i64 %62, i64* %9, align 8
  br label %70

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %3, align 8
  %66 = mul i64 %64, %65
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %66, %68
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i64 @DIV_ROUND_UP(i64 %74, i32 %75)
  store i64 %76, i64* %10, align 8
  br label %84

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %3, align 8
  %80 = mul i64 %78, %79
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %80, %82
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %77, %73
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp uge i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, i64* %9, align 8
  %90 = udiv i64 %89, 2
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %88, %84
  %92 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %92, %struct.task_struct** %11, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PF_LESS_THROTTLE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %101 = call i64 @rt_task(%struct.task_struct* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %99, %91
  %104 = load i64, i64* %10, align 8
  %105 = udiv i64 %104, 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @global_wb_domain, i32 0, i32 0), align 4
  %107 = sdiv i32 %106, 32
  %108 = sext i32 %107 to i64
  %109 = add i64 %105, %108
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %9, align 8
  %113 = udiv i64 %112, 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @global_wb_domain, i32 0, i32 0), align 4
  %115 = sdiv i32 %114, 32
  %116 = sext i32 %115 to i64
  %117 = add i64 %113, %116
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %103, %99
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %123 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %126 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %128 = icmp ne %struct.dirty_throttle_control* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %120
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @trace_global_dirty_state(i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %129, %120
  ret void
}

declare dso_local %struct.dirty_throttle_control* @mdtc_gdtc(%struct.dirty_throttle_control*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @rt_task(%struct.task_struct*) #1

declare dso_local i32 @trace_global_dirty_state(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
