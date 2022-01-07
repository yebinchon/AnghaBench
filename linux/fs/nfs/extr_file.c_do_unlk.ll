; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_do_unlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_do_unlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }

@FL_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*, i32)* @do_unlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unlk(%struct.file* %0, i32 %1, %struct.file_lock* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs_lock_context*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file_lock* %2, %struct.file_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @nfs_wb_all(%struct.inode* %18)
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = call i32 @nfs_file_open_context(%struct.file* %20)
  %22 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %21)
  store %struct.nfs_lock_context* %22, %struct.nfs_lock_context** %11, align 8
  %23 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %24 = call i32 @IS_ERR(%struct.nfs_lock_context* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %4
  %27 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %28 = call i32 @nfs_iocounter_wait(%struct.nfs_lock_context* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %30 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FL_CLOSE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %61

42:                                               ; preds = %33, %26
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %49, align 8
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %54 = call i32 %50(%struct.file* %51, i32 %52, %struct.file_lock* %53)
  store i32 %54, i32* %12, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %58 = call i32 @locks_lock_file_wait(%struct.file* %56, %struct.file_lock* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @nfs_wb_all(%struct.inode*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs_iocounter_wait(%struct.nfs_lock_context*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
