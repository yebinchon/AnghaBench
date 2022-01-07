; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_node_dirty_limit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_node_dirty_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pglist_data = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@vm_dirty_bytes = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_dirty_ratio = common dso_local global i64 0, align 8
@PF_LESS_THROTTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pglist_data*)* @node_dirty_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @node_dirty_limit(%struct.pglist_data* %0) #0 {
  %2 = alloca %struct.pglist_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.pglist_data* %0, %struct.pglist_data** %2, align 8
  %6 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  %7 = call i64 @node_dirtyable_memory(%struct.pglist_data* %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  %9 = load i64, i64* @vm_dirty_bytes, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i64, i64* @vm_dirty_bytes, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i64 @DIV_ROUND_UP(i64 %12, i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = mul i64 %14, %15
  %17 = call i64 (...) @global_dirtyable_memory()
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %24

19:                                               ; preds = %1
  %20 = load i64, i64* @vm_dirty_ratio, align 8
  %21 = load i64, i64* %3, align 8
  %22 = mul i64 %20, %21
  %23 = udiv i64 %22, 100
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PF_LESS_THROTTLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = call i64 @rt_task(%struct.task_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %24
  %36 = load i64, i64* %5, align 8
  %37 = udiv i64 %36, 4
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @node_dirtyable_memory(%struct.pglist_data*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @global_dirtyable_memory(...) #1

declare dso_local i64 @rt_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
