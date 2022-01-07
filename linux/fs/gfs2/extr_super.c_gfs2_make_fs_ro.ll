; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_make_fs_ro.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_make_fs_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gfs2_holder = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_SHUTDOWN = common dso_local global i32 0, align 4
@GFS2_LFC_MAKE_FS_RO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_make_fs_ro(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_holder, align 4
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LM_ST_SHARED, align 4
  %10 = load i32, i32* @GL_NOCACHE, align 4
  %11 = call i32 @gfs2_glock_nq_init(i32 %8, i32 %9, i32 %10, %struct.gfs2_holder* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @SDF_WITHDRAWN, align 4
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 7
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %14, %1
  %23 = load i32, i32* @gfs2_delete_workqueue, align 4
  %24 = call i32 @flush_workqueue(i32 %23)
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kthread_stop(i32* %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kthread_stop(i32* %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %50 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gfs2_quota_sync(i32 %51, i32 0)
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gfs2_statfs_sync(i32 %55, i32 0)
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %58 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_SHUTDOWN, align 4
  %59 = load i32, i32* @GFS2_LFC_MAKE_FS_RO, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %57, i32* null, i32 %60)
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %63 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 2
  %67 = call i64 @atomic_read(i32* %66)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event(i32 %64, i32 %69)
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 1
  %74 = call i64 @atomic_read(i32* %73)
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %74, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %71, i32 %81)
  %83 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %4)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %46
  %86 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %4)
  br label %87

87:                                               ; preds = %85, %46
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %89 = call i32 @gfs2_quota_cleanup(%struct.gfs2_sbd* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %20
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @gfs2_quota_sync(i32, i32) #1

declare dso_local i32 @gfs2_statfs_sync(i32, i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_quota_cleanup(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
