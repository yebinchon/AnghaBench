; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_dispatch_assert_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_dispatch_assert_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_work_item = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.dlm_lock_resource* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlm_assert_master_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IGNORE HIGHER: %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lock_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_work_item*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.dlm_work_item* @kzalloc(i32 32, i32 %13)
  store %struct.dlm_work_item* %14, %struct.dlm_work_item** %12, align 8
  %15 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %16 = icmp ne %struct.dlm_work_item* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %75

20:                                               ; preds = %5
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %22 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %23 = load i32, i32* @dlm_assert_master_worker, align 4
  %24 = call i32 @dlm_init_work_item(%struct.dlm_ctxt* %21, %struct.dlm_work_item* %22, i32 %23, i32* null)
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %26 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %27 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store %struct.dlm_lock_resource* %25, %struct.dlm_lock_resource** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %32 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %37 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %42 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %20
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %53 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %47, %20
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %59 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %58, i32 0, i32 2
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.dlm_work_item*, %struct.dlm_work_item** %12, align 8
  %62 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %61, i32 0, i32 0
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %64 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %63, i32 0, i32 3
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %70 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %73 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %72, i32 0, i32 0
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %57, %17
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.dlm_work_item* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_init_work_item(%struct.dlm_ctxt*, %struct.dlm_work_item*, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
