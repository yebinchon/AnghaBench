; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_mark_lockres_freeing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_mark_lockres_freeing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, i32, i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@OCFS2_LOCK_QUEUED = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Waiting on lockres %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_mark_lockres_freeing(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_mask_waiter, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %9 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %6)
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %2
  %26 = load i64, i64* @current, align 8
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 4
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %44 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 1
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @WARN_ON_ONCE(i32 %55)
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %58 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %59 = call i32 @ocfs2_process_blocked_lock(%struct.ocfs2_super* %57, %struct.ocfs2_lock_res* %58)
  br label %96

60:                                               ; preds = %25, %2
  br label %61

61:                                               ; preds = %86, %60
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %63 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %70 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %71 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %69, %struct.ocfs2_mask_waiter* %6, i32 %70, i32 0)
  %72 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %73 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %72, i32 0, i32 1
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %77 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %6)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %88 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %87, i32 0, i32 1
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %93 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %92, i32 0, i32 1
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %31
  ret void
}

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ocfs2_process_blocked_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
