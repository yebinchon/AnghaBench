; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_migrate_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, i32 }
%struct.dlm_migrate_request = type { i8*, i32, i32, i32 }
%struct.dlm_master_list_entry = type { i32 }

@dlm_mle_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Got a migrate request, but the lockres is marked as recovering!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_migrate_request_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_lock_resource*, align 8
  %12 = alloca %struct.dlm_migrate_request*, align 8
  %13 = alloca %struct.dlm_master_list_entry*, align 8
  %14 = alloca %struct.dlm_master_list_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %20, %struct.dlm_ctxt** %10, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %11, align 8
  %21 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %22 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dlm_migrate_request*
  store %struct.dlm_migrate_request* %24, %struct.dlm_migrate_request** %12, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %13, align 8
  store %struct.dlm_master_list_entry* null, %struct.dlm_master_list_entry** %14, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = call i32 @dlm_grab(%struct.dlm_ctxt* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %137

29:                                               ; preds = %4
  %30 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %31 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %34 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @dlm_lockid_hash(i8* %36, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* @dlm_mle_cache, align 4
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call %struct.dlm_master_list_entry* @kmem_cache_alloc(i32 %39, i32 %40)
  store %struct.dlm_master_list_entry* %41, %struct.dlm_master_list_entry** %13, align 8
  %42 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %43 = icmp ne %struct.dlm_master_list_entry* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %18, align 4
  br label %133

47:                                               ; preds = %29
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %51, i8* %52, i32 %53, i32 %54)
  store %struct.dlm_lock_resource* %55, %struct.dlm_lock_resource** %11, align 8
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %57 = icmp ne %struct.dlm_lock_resource* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %47
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %59, i32 0, i32 1
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %63 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = call i32 @mlog(i32 %72, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @dlm_mle_cache, align 4
  %75 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %76 = call i32 @kmem_cache_free(i32 %74, %struct.dlm_master_list_entry* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %18, align 4
  br label %114

79:                                               ; preds = %58
  %80 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %86 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %79, %47
  %89 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %90 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %89, i32 0, i32 1
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %93 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %94 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %98 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dlm_migrate_request*, %struct.dlm_migrate_request** %12, align 8
  %101 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dlm_add_migration_mle(%struct.dlm_ctxt* %92, %struct.dlm_lock_resource* %93, %struct.dlm_master_list_entry* %94, %struct.dlm_master_list_entry** %14, i8* %95, i32 %96, i32 %99, i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %88
  %107 = load i32, i32* @dlm_mle_cache, align 4
  %108 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %13, align 8
  %109 = call i32 @kmem_cache_free(i32 %107, %struct.dlm_master_list_entry* %108)
  br label %110

110:                                              ; preds = %106, %88
  %111 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %112 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %68
  %115 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %116 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %119 = icmp ne %struct.dlm_master_list_entry* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %122 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %123 = call i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt* %121, %struct.dlm_master_list_entry* %122)
  %124 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %14, align 8
  %125 = call i32 @dlm_put_mle(%struct.dlm_master_list_entry* %124)
  br label %126

126:                                              ; preds = %120, %114
  %127 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %128 = icmp ne %struct.dlm_lock_resource* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %11, align 8
  %131 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %130)
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %44
  %134 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %135 = call i32 @dlm_put(%struct.dlm_ctxt* %134)
  %136 = load i32, i32* %18, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %28
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local %struct.dlm_master_list_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_add_migration_mle(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry**, i8*, i32, i32, i32) #1

declare dso_local i32 @dlm_mle_detach_hb_events(%struct.dlm_ctxt*, %struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_put_mle(%struct.dlm_master_list_entry*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
