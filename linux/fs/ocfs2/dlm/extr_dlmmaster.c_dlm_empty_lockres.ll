; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_empty_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_empty_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: res %.*s, Migrate to node %u failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_empty_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @O2NM_MAX_NODES, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 0
  %11 = call i32 @assert_spin_locked(i32* %10)
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %17 = call i64 @dlm_is_lockres_migratable(%struct.dlm_ctxt* %15, %struct.dlm_lock_resource* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %22 = call i64 @dlm_pick_migration_target(%struct.dlm_ctxt* %20, %struct.dlm_lock_resource* %21)
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @O2NM_MAX_NODES, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %60

31:                                               ; preds = %23
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  store i32 1, i32* %6, align 4
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @dlm_migrate_lockres(%struct.dlm_ctxt* %35, %struct.dlm_lock_resource* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %43 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %50 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %52, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %41, %31
  %57 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %58 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  br label %60

60:                                               ; preds = %56, %30
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @dlm_is_lockres_migratable(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i64 @dlm_pick_migration_target(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_migrate_lockres(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
