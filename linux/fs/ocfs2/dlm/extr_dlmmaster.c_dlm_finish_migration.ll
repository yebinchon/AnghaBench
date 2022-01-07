; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_finish_migration.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_finish_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_node_iter = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"now time to do a migrate request to other nodes\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"doing assert master of %.*s to all except the original node\0A\00", align 1
@DLM_ASSERT_MASTER_FINISH_MIGRATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"doing assert master of %.*s back to %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"assert master to original master failed with %d.\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_finish_migration(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_node_iter, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dlm_node_iter_init(i32 %14, %struct.dlm_node_iter* %7)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clear_bit(i32 %16, i32 %18)
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clear_bit(i32 %22, i32 %24)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt* %32, %struct.dlm_lock_resource* %33, i32 %34)
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dlm_do_migrate_request(%struct.dlm_ctxt* %40, %struct.dlm_lock_resource* %41, i32 %42, i32 %45, %struct.dlm_node_iter* %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %127

52:                                               ; preds = %3
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60)
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %63 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DLM_ASSERT_MASTER_FINISH_MIGRATION, align 4
  %67 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %62, %struct.dlm_lock_resource* %63, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %52
  %74 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memset(i32 %75, i32 0, i32 4)
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_bit(i32 %77, i32 %79)
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %82 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %86 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88, i32 %89)
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %92 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %93 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DLM_ASSERT_MASTER_FINISH_MIGRATION, align 4
  %96 = call i32 @dlm_do_assert_master(%struct.dlm_ctxt* %91, %struct.dlm_lock_resource* %92, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %73
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %73
  %103 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %104 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %103, i32 0, i32 1
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %107 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %106, %struct.dlm_lock_resource* %107, i32 %110)
  %112 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %115 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %119 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %122 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %123 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %121, %struct.dlm_lock_resource* %122)
  %124 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %125 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %124, i32 0, i32 0
  %126 = call i32 @wake_up(i32* %125)
  br label %127

127:                                              ; preds = %102, %49
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_do_migrate_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_do_assert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
