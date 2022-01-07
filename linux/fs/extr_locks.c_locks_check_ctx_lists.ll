; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_check_ctx_lists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_check_ctx_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, %struct.file_lock_context* }
%struct.TYPE_2__ = type { i32 }
%struct.file_lock_context = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Leaked locks on dev=0x%x:0x%x ino=0x%lx:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FLOCK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LEASE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @locks_check_ctx_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locks_check_ctx_lists(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.file_lock_context*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 2
  %6 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  store %struct.file_lock_context* %6, %struct.file_lock_context** %3, align 8
  %7 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %8 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %7, i32 0, i32 2
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %13 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %18 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %11, %1
  %23 = phi i1 [ true, %11 ], [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MINOR(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39, i32 %42)
  %44 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %45 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %44, i32 0, i32 2
  %46 = call i32 @locks_dump_ctx_list(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %48 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %47, i32 0, i32 1
  %49 = call i32 @locks_dump_ctx_list(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %51 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %50, i32 0, i32 0
  %52 = call i32 @locks_dump_ctx_list(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %27, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @locks_dump_ctx_list(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
