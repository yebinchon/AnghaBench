; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_mig_lockres_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_mig_lockres_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_work_item = type { %struct.TYPE_5__, %struct.dlm_ctxt* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_ctxt = type { i32 }
%struct.dlm_migratable_lockres = type { i32, i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"dlm_lockres_master_requery ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"lockres %.*s not claimed.  this node will take it.\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"master needs to respond to sender that node %u still owns %.*s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"dlm_process_recovery_data returned  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dlm_process_recovery_data succeeded\0A\00", align 1
@DLM_MRES_MIGRATION = common dso_local global i32 0, align 4
@DLM_MRES_ALL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_work_item*, i8*)* @dlm_mig_lockres_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_mig_lockres_worker(%struct.dlm_work_item* %0, i8* %1) #0 {
  %3 = alloca %struct.dlm_work_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_migratable_lockres*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_lock_resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dlm_work_item* %0, %struct.dlm_work_item** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %11, i32 0, i32 1
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %12, align 8
  store %struct.dlm_ctxt* %13, %struct.dlm_ctxt** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.dlm_migratable_lockres*
  store %struct.dlm_migratable_lockres* %15, %struct.dlm_migratable_lockres** %6, align 8
  %16 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %19, align 8
  store %struct.dlm_lock_resource* %20, %struct.dlm_lock_resource** %8, align 8
  %21 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %41, %34
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %37 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %38 = call i32 @dlm_lockres_master_requery(%struct.dlm_ctxt* %36, %struct.dlm_lock_resource* %37, i64* %9)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %35

44:                                               ; preds = %35
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %50 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56)
  br label %78

58:                                               ; preds = %44
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %59, i32 0, i32 1
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %63 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %64 = call i32 @dlm_lockres_drop_inflight_ref(%struct.dlm_ctxt* %62, %struct.dlm_lock_resource* %63)
  %65 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %66 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %68, i32 %72, i32 %76)
  br label %117

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %2
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %82 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %83 = call i32 @dlm_process_recovery_data(%struct.dlm_ctxt* %80, %struct.dlm_lock_resource* %81, %struct.dlm_migratable_lockres* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %91

89:                                               ; preds = %79
  %90 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %93 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %96 = load i32, i32* @DLM_MRES_ALL_DONE, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %100 = load i32, i32* @DLM_MRES_ALL_DONE, align 4
  %101 = or i32 %99, %100
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %105 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %106 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %107 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dlm_finish_migration(%struct.dlm_ctxt* %104, %struct.dlm_lock_resource* %105, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @mlog_errno(i32 %113)
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %58
  %118 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %119 = icmp ne %struct.dlm_lock_resource* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i64, i64* %10, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %125 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %128 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %127)
  br label %129

129:                                              ; preds = %126, %117
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @kfree(i8* %130)
  ret void
}

declare dso_local i32 @dlm_lockres_master_requery(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_lockres_drop_inflight_ref(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_process_recovery_data(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_migratable_lockres*) #1

declare dso_local i32 @dlm_finish_migration(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
