; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock_context = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FLOCK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"LEASE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_remove_file(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.file_lock_context*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.TYPE_2__* @locks_inode(%struct.file* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call %struct.file_lock_context* @smp_load_acquire(i32* %6)
  store %struct.file_lock_context* %7, %struct.file_lock_context** %3, align 8
  %8 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %9 = icmp ne %struct.file_lock_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = call i32 @locks_remove_posix(%struct.file* %12, %struct.file* %13)
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %17 = call i32 @locks_remove_flock(%struct.file* %15, %struct.file_lock_context* %16)
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %20 = call i32 @locks_remove_lease(%struct.file* %18, %struct.file_lock_context* %19)
  %21 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %22 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %26 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %25, i32 0, i32 3
  %27 = call i32 @locks_check_ctx_file_list(%struct.file* %24, i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.file*, %struct.file** %2, align 8
  %29 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %30 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %29, i32 0, i32 2
  %31 = call i32 @locks_check_ctx_file_list(%struct.file* %28, i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.file*, %struct.file** %2, align 8
  %33 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %34 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %33, i32 0, i32 1
  %35 = call i32 @locks_check_ctx_file_list(%struct.file* %32, i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %37 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.file_lock_context* @smp_load_acquire(i32*) #1

declare dso_local %struct.TYPE_2__* @locks_inode(%struct.file*) #1

declare dso_local i32 @locks_remove_posix(%struct.file*, %struct.file*) #1

declare dso_local i32 @locks_remove_flock(%struct.file*, %struct.file_lock_context*) #1

declare dso_local i32 @locks_remove_lease(%struct.file*, %struct.file_lock_context*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @locks_check_ctx_file_list(%struct.file*, i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
