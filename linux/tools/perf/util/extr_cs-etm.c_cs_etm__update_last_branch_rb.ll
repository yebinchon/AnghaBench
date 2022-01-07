; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__update_last_branch_rb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__update_last_branch_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cs_etm_traceid_queue = type { i32, i32, i32, %struct.branch_stack* }
%struct.branch_stack = type { i64, %struct.branch_entry* }
%struct.branch_entry = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*)* @cs_etm__update_last_branch_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__update_last_branch_rb(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca %struct.cs_etm_queue*, align 8
  %4 = alloca %struct.cs_etm_traceid_queue*, align 8
  %5 = alloca %struct.branch_stack*, align 8
  %6 = alloca %struct.branch_entry*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %3, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %4, align 8
  %7 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %7, i32 0, i32 3
  %9 = load %struct.branch_stack*, %struct.branch_stack** %8, align 8
  store %struct.branch_stack* %9, %struct.branch_stack** %5, align 8
  %10 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %11 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %16 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %22 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %25 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %29 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %28, i32 0, i32 1
  %30 = load %struct.branch_entry*, %struct.branch_entry** %29, align 8
  %31 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %32 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %30, i64 %34
  store %struct.branch_entry* %35, %struct.branch_entry** %6, align 8
  %36 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %37 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cs_etm__last_executed_instr(i32 %38)
  %40 = load %struct.branch_entry*, %struct.branch_entry** %6, align 8
  %41 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %43 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cs_etm__first_executed_instr(i32 %44)
  %46 = load %struct.branch_entry*, %struct.branch_entry** %6, align 8
  %47 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.branch_entry*, %struct.branch_entry** %6, align 8
  %49 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.branch_entry*, %struct.branch_entry** %6, align 8
  %52 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %55 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %58 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %56, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %23
  %66 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %67 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %23
  ret void
}

declare dso_local i32 @cs_etm__last_executed_instr(i32) #1

declare dso_local i32 @cs_etm__first_executed_instr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
