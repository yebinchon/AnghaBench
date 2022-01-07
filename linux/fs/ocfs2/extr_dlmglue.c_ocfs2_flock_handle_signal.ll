; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_flock_handle_signal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_flock_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cancel returning %d. flags: 0x%lx, level: %d, act: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_flock_handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_flock_handle_signal(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ocfs2_mask_waiter, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %10 = call %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %9)
  store %struct.ocfs2_super* %10, %struct.ocfs2_super** %6, align 8
  %11 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %8)
  br label %12

12:                                               ; preds = %43, %42, %2
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %12
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %26 = call i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super* %24, %struct.ocfs2_lock_res* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 2
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %35 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %36 = call i32 @ocfs2_cancel_convert(%struct.ocfs2_super* %34, %struct.ocfs2_lock_res* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %77

42:                                               ; preds = %29
  br label %12

43:                                               ; preds = %23
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %45 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %46 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %44, %struct.ocfs2_mask_waiter* %8, i32 %45, i32 0)
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 2
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %8)
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* @ERESTARTSYS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %56 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %64 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %67 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %70 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %74 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %73, i32 0, i32 2
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %61, %39
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
