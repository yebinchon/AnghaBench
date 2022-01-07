; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_assert_master_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_work_item = type { %struct.TYPE_5__, %struct.dlm_ctxt* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dlm_ctxt = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"Someone asked us to assert mastery, but we're in the middle of migration.  Skipping assert, the new master will handle that.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"worker about to master %.*s here, this=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"finished with dlm_assert_master_worker\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_work_item*, i8*)* @dlm_assert_master_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_assert_master_worker(%struct.dlm_work_item* %0, i8* %1) #0 {
  %3 = alloca %struct.dlm_work_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dlm_work_item* %0, %struct.dlm_work_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %15, %struct.dlm_ctxt** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @O2NM_MAX_NODES, align 4
  %17 = call i32 @BITS_TO_LONGS(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %21, i32 0, i32 1
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %22, align 8
  store %struct.dlm_ctxt* %23, %struct.dlm_ctxt** %5, align 8
  %24 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %27, align 8
  store %struct.dlm_lock_resource* %28, %struct.dlm_lock_resource** %7, align 8
  %29 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %30 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.dlm_work_item*, %struct.dlm_work_item** %3, align 8
  %40 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nuw i64 8, %18
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i64* %20, i32 %49, i32 %51)
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %57 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clear_bit(i32 %58, i64* %20)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %2
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @clear_bit(i32 %63, i64* %20)
  %65 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %78, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @O2NM_MAX_NODES, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @find_next_bit(i64* %20, i32 %70, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @O2NM_MAX_NODES, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @clear_bit(i32 %79, i64* %20)
  br label %68

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %84 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %83, i32 0, i32 2
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %87 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %95 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %94, i32 0, i32 2
  %96 = call i32 @spin_unlock(i32* %95)
  br label %134

97:                                               ; preds = %82
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %99 = call i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource* %98)
  br label %100

100:                                              ; preds = %97
  %101 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %102 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %101, i32 0, i32 2
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %105 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %109 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %111, i32 %114)
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %116, %struct.dlm_lock_resource* %117, i64* %20, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %100
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @dlm_is_host_down(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %100
  %131 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %132 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %133 = call i32 @dlm_lockres_release_ast(%struct.dlm_ctxt* %131, %struct.dlm_lock_resource* %132)
  br label %134

134:                                              ; preds = %130, %92
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %136 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %137 = call i32 @dlm_lockres_drop_inflight_worker(%struct.dlm_ctxt* %135, %struct.dlm_lock_resource* %136)
  %138 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %139 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %138)
  %140 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_do_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64*, i32) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_lockres_release_ast(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_drop_inflight_worker(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
