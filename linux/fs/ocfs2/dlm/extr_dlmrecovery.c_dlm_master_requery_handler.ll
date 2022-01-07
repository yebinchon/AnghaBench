; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_master_requery_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_master_requery_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_master_requery = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@DLM_ASSERT_MASTER_REQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_master_requery_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_master_requery*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %19, %struct.dlm_ctxt** %10, align 8
  %20 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %21 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dlm_master_requery*
  store %struct.dlm_master_requery* %23, %struct.dlm_master_requery** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  %24 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @DLM_ASSERT_MASTER_REQUERY, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %27 = call i32 @dlm_grab(%struct.dlm_ctxt* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %112

31:                                               ; preds = %4
  %32 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %33 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %36 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dlm_lockid_hash(i32 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %40 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %43 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %44 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dlm_master_requery*, %struct.dlm_master_requery** %11, align 8
  %47 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %42, i32 %45, i32 %48, i32 %49)
  store %struct.dlm_lock_resource* %50, %struct.dlm_lock_resource** %12, align 8
  %51 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %52 = icmp ne %struct.dlm_lock_resource* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %31
  %54 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %58 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %62 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %53
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %67 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt* %66, %struct.dlm_lock_resource* %67, i32 0, i32 0, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %76 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %79 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %78)
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %81 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %84 = call i32 @dlm_put(%struct.dlm_ctxt* %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %5, align 4
  br label %112

86:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  %87 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %88 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %89 = call i32 @__dlm_lockres_grab_inflight_worker(%struct.dlm_ctxt* %87, %struct.dlm_lock_resource* %88)
  %90 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %91 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %86
  br label %100

94:                                               ; preds = %53
  %95 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %99 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %98)
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %31
  %102 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %103 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %109 = call i32 @dlm_put(%struct.dlm_ctxt* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %72, %29
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_lockid_hash(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i32, i32, i32) #1

declare dso_local i32 @dlm_dispatch_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

declare dso_local i32 @__dlm_lockres_grab_inflight_worker(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
