; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_update_last_branch_rb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_update_last_branch_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, %struct.TYPE_6__*, %struct.branch_stack*, %struct.intel_pt_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.branch_stack = type { i64, %struct.branch_entry* }
%struct.branch_entry = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.intel_pt_state = type { i32, i32, i32 }

@INTEL_PT_ABORT_TX = common dso_local global i32 0, align 4
@INTEL_PT_IN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_queue*)* @intel_pt_update_last_branch_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_update_last_branch_rb(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca %struct.intel_pt_queue*, align 8
  %3 = alloca %struct.intel_pt_state*, align 8
  %4 = alloca %struct.branch_stack*, align 8
  %5 = alloca %struct.branch_entry*, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %2, align 8
  %6 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %6, i32 0, i32 3
  %8 = load %struct.intel_pt_state*, %struct.intel_pt_state** %7, align 8
  store %struct.intel_pt_state* %8, %struct.intel_pt_state** %3, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %10 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %9, i32 0, i32 2
  %11 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  store %struct.branch_stack* %11, %struct.branch_stack** %4, align 8
  %12 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %13 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %18 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %31 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %30, i32 0, i32 1
  %32 = load %struct.branch_entry*, %struct.branch_entry** %31, align 8
  %33 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %34 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %32, i64 %36
  store %struct.branch_entry* %37, %struct.branch_entry** %5, align 8
  %38 = load %struct.intel_pt_state*, %struct.intel_pt_state** %3, align 8
  %39 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %42 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.intel_pt_state*, %struct.intel_pt_state** %3, align 8
  %44 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %47 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.intel_pt_state*, %struct.intel_pt_state** %3, align 8
  %49 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @INTEL_PT_ABORT_TX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %58 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.intel_pt_state*, %struct.intel_pt_state** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INTEL_PT_IN_TX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %70 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %73 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %78 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %81 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %84 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %82, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %25
  %92 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %93 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
