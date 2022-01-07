; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_add_migration_mle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_add_migration_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i8*, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_master_list_entry = type { i64, i32, i8*, i8*, i32, i32, i32 }

@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"tried to migrate %.*s, but some process beat me to it\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"migration error  mle: master=%u new_master=%u // request: master=%u new_master=%u // lockres=%.*s\0A\00", align 1
@DLM_MLE_MASTER = common dso_local global i64 0, align 8
@DLM_MIGRATE_RESPONSE_MASTERY_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [98 x i8] c"%s:%.*s: master=%u, newmaster=%u, telling master to get ref for cleared out mle during migration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry**, i8*, i32, i8*, i8*)* @dlm_add_migration_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_add_migration_mle(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_master_list_entry* %2, %struct.dlm_master_list_entry** %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_lock_resource*, align 8
  %12 = alloca %struct.dlm_master_list_entry*, align 8
  %13 = alloca %struct.dlm_master_list_entry**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dlm_master_list_entry*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %11, align 8
  store %struct.dlm_master_list_entry* %2, %struct.dlm_master_list_entry** %12, align 8
  store %struct.dlm_master_list_entry** %3, %struct.dlm_master_list_entry*** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %13, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %21, align 8
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 3
  %24 = call i32 @assert_spin_locked(i32* %23)
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 2
  %27 = call i32 @assert_spin_locked(i32* %26)
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %29 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @dlm_find_mle(%struct.dlm_ctxt* %28, %struct.dlm_master_list_entry** %29, i8* %30, i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %113

35:                                               ; preds = %8
  %36 = load %struct.dlm_master_list_entry**, %struct.dlm_master_list_entry*** %13, align 8
  %37 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %36, align 8
  store %struct.dlm_master_list_entry* %37, %struct.dlm_master_list_entry** %20, align 8
  %38 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %39 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %38, i32 0, i32 4
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %42 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %35
  %47 = load i8*, i8** %17, align 8
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  %56 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %57 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %56, i32 0, i32 4
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %136

61:                                               ; preds = %46
  %62 = load i32, i32* @ML_ERROR, align 4
  %63 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %64 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %68 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 (i32, i8*, i32, ...) @mlog(i32 %62, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %69, i8* %70, i8* %71, i32 %72, i8* %73)
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %61
  br label %109

77:                                               ; preds = %35
  %78 = load i8*, i8** %17, align 8
  %79 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %80 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %82 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %81, i32 0, i32 6
  %83 = call i32 @atomic_set(i32* %82, i32 1)
  %84 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %85 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %84, i32 0, i32 5
  %86 = call i32 @wake_up(i32* %85)
  %87 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %88 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %89 = call i32 @__dlm_unlink_mle(%struct.dlm_ctxt* %87, %struct.dlm_master_list_entry* %88)
  %90 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %91 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %92 = call i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt* %90, %struct.dlm_master_list_entry* %91)
  %93 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %94 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DLM_MLE_MASTER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %77
  %99 = load i32, i32* @DLM_MIGRATE_RESPONSE_MASTERY_REF, align 4
  store i32 %99, i32* %19, align 4
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %103, i8* %104, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %98, %77
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %20, align 8
  %111 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %110, i32 0, i32 4
  %112 = call i32 @spin_unlock(i32* %111)
  br label %113

113:                                              ; preds = %109, %8
  %114 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %12, align 8
  %115 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @dlm_init_mle(%struct.dlm_master_list_entry* %114, i64 %115, %struct.dlm_ctxt* %116, %struct.dlm_lock_resource* %117, i8* %118, i32 %119)
  %121 = load i8*, i8** %16, align 8
  %122 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %12, align 8
  %123 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %12, align 8
  %126 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %12, align 8
  %129 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @set_bit(i8* %127, i32 %130)
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %133 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %12, align 8
  %134 = call i32 @__dlm_insert_mle(%struct.dlm_ctxt* %132, %struct.dlm_master_list_entry* %133)
  %135 = load i32, i32* %19, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %113, %52
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dlm_find_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry**, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @__dlm_unlink_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @__dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_init_mle(%struct.dlm_master_list_entry*, i64, %struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*, i32) #1

declare dso_local i32 @set_bit(i8*, i32) #1

declare dso_local i32 @__dlm_insert_mle(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
