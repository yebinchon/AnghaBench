; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_schedule_blocked_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_schedule_blocked_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }

@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lockres %s won't be scheduled: flags 0x%lx\0A\00", align 1
@OCFS2_LOCK_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_schedule_blocked_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_schedule_blocked_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 3
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @ML_BASTS, align 4
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlog(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %26 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %27 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %25, i32 %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %32, i32 0, i32 1
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %37, i32 0, i32 1
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %24
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
