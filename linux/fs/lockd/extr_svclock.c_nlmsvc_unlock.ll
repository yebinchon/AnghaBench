; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlm_file = type { i32 }
%struct.nlm_lock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"lockd: nlmsvc_unlock(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", align 1
@F_UNLCK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_unlock(%struct.net* %0, %struct.nlm_file* %1, %struct.nlm_lock* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlm_file*, align 8
  %6 = alloca %struct.nlm_lock*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %5, align 8
  store %struct.nlm_lock* %2, %struct.nlm_lock** %6, align 8
  %8 = load %struct.nlm_file*, %struct.nlm_file** %5, align 8
  %9 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_6__* @locks_inode(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nlm_file*, %struct.nlm_file** %5, align 8
  %17 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_6__* @locks_inode(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %23 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %27 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %31 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %25, i64 %29, i64 %33)
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = load %struct.nlm_file*, %struct.nlm_file** %5, align 8
  %37 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %38 = call i32 @nlmsvc_cancel_blocked(%struct.net* %35, %struct.nlm_file* %36, %struct.nlm_lock* %37)
  %39 = load i32, i32* @F_UNLCK, align 4
  %40 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %41 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.nlm_file*, %struct.nlm_file** %5, align 8
  %44 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @F_SETLK, align 4
  %47 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %48 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %47, i32 0, i32 0
  %49 = call i32 @vfs_lock_file(i32 %45, i32 %46, %struct.TYPE_5__* %48, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @nlm_lck_denied_nolocks, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @nlm_granted, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  ret i32 %57
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_6__* @locks_inode(i32) #1

declare dso_local i32 @nlmsvc_cancel_blocked(%struct.net*, %struct.nlm_file*, %struct.nlm_lock*) #1

declare dso_local i32 @vfs_lock_file(i32, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
