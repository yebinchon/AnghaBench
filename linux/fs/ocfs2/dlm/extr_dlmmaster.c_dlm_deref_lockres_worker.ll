; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_deref_lockres_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_deref_lockres_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_work_item = type { %struct.TYPE_5__, %struct.dlm_ctxt* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_ctxt = type { i32 }

@DLM_LOCK_RES_DROPPING_REF = common dso_local global i32 0, align 4
@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s:%.*s node %u ref dropped in dispatch\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s:%.*s: node %u trying to drop ref but it is already dropped!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_work_item*, i8*)* @dlm_deref_lockres_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_deref_lockres_worker(%struct.dlm_work_item* %0, i8* %1) #0 {
  %3 = alloca %struct.dlm_work_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_work_item* %0, %struct.dlm_work_item** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %9, i32 0, i32 1
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_ctxt* %11, %struct.dlm_ctxt** %5, align 8
  %12 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %13 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %15, align 8
  store %struct.dlm_lock_resource* %16, %struct.dlm_lock_resource** %6, align 8
  %17 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DLM_LOCK_RES_DROPPING_REF, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %32 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %33 = call i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dlm_lockres_clear_refmap_bit(%struct.dlm_ctxt* %41, %struct.dlm_lock_resource* %42, i32 %43)
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %47 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dlm_drop_lockres_ref_done(%struct.dlm_ctxt* %49, %struct.dlm_lock_resource* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %45
  %56 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %64 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62, i32 %66, i32 %67)
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %70 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %71 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %69, %struct.dlm_lock_resource* %70)
  br label %89

72:                                               ; preds = %45
  %73 = load i32, i32* @ML_ERROR, align 4
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %78 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mlog(i32 %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %80, i32 %84, i32 %85)
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %88 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %87)
  br label %89

89:                                               ; preds = %72, %55
  %90 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %91 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %90)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @dlm_lockres_clear_refmap_bit(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_drop_lockres_ref_done(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
