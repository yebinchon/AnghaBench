; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_cancel_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_cancel_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlm_file = type { i32, i32 }
%struct.nlm_lock = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.nlm_block = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@nlm_lck_denied = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_cancel_blocked(%struct.net* %0, %struct.nlm_file* %1, %struct.nlm_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nlm_file*, align 8
  %7 = alloca %struct.nlm_lock*, align 8
  %8 = alloca %struct.nlm_block*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %6, align 8
  store %struct.nlm_lock* %2, %struct.nlm_lock** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %11 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_14__* @locks_inode(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %19 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_14__* @locks_inode(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %25 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %29 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %33 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %23, i32 %27, i64 %31, i64 %35)
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = call i64 @locks_in_grace(%struct.net* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %3
  %43 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %44 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %47 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %48 = call %struct.nlm_block* @nlmsvc_lookup_block(%struct.nlm_file* %46, %struct.nlm_lock* %47)
  store %struct.nlm_block* %48, %struct.nlm_block** %8, align 8
  %49 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %50 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.nlm_block*, %struct.nlm_block** %8, align 8
  %53 = icmp ne %struct.nlm_block* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %42
  %55 = load %struct.nlm_block*, %struct.nlm_block** %8, align 8
  %56 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nlm_block*, %struct.nlm_block** %8, align 8
  %61 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = call i32 @vfs_cancel_lock(i32 %59, i32* %65)
  %67 = load %struct.nlm_block*, %struct.nlm_block** %8, align 8
  %68 = call i32 @nlmsvc_unlink_block(%struct.nlm_block* %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.nlm_block*, %struct.nlm_block** %8, align 8
  %70 = call i32 @nlmsvc_release_block(%struct.nlm_block* %69)
  br label %71

71:                                               ; preds = %54, %42
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @nlm_lck_denied, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @nlm_granted, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %40
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_14__* @locks_inode(i32) #1

declare dso_local i64 @locks_in_grace(%struct.net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nlm_block* @nlmsvc_lookup_block(%struct.nlm_file*, %struct.nlm_lock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_cancel_lock(i32, i32*) #1

declare dso_local i32 @nlmsvc_unlink_block(%struct.nlm_block*) #1

declare dso_local i32 @nlmsvc_release_block(%struct.nlm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
