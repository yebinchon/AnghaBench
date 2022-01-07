; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c___reserve_bp_slot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c___reserve_bp_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.bp_busy_slots = type { i64, i32, i32 }

@constraints_initialized = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HW_BREAKPOINT_EMPTY = common dso_local global i64 0, align 8
@HW_BREAKPOINT_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nr_slots = common dso_local global i64* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i64)* @__reserve_bp_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reserve_bp_slot(%struct.perf_event* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bp_busy_slots, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = bitcast %struct.bp_busy_slots* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load i32, i32* @constraints_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HW_BREAKPOINT_EMPTY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @HW_BREAKPOINT_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @find_slot_idx(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = call i32 @hw_breakpoint_weight(%struct.perf_event* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fetch_bp_busy_slots(%struct.bp_busy_slots* %6, %struct.perf_event* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @fetch_this_slot(%struct.bp_busy_slots* %6, i32 %34)
  %36 = getelementptr inbounds %struct.bp_busy_slots, %struct.bp_busy_slots* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bp_busy_slots, %struct.bp_busy_slots* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %37, %44
  %46 = load i64*, i64** @nr_slots, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %26
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %26
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @toggle_bp_slot(%struct.perf_event* %56, i32 1, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %52, %23, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @find_slot_idx(i64) #2

declare dso_local i32 @hw_breakpoint_weight(%struct.perf_event*) #2

declare dso_local i32 @fetch_bp_busy_slots(%struct.bp_busy_slots*, %struct.perf_event*, i32) #2

declare dso_local i32 @fetch_this_slot(%struct.bp_busy_slots*, i32) #2

declare dso_local i32 @toggle_bp_slot(%struct.perf_event*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
